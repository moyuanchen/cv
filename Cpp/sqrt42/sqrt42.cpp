#include <iostream>
#include <string>
#include <vector>
#include <algorithm>
#include <stdexcept>
#include <chrono>
#include <thread>
 
/**
* @class BigInt
* @brief A class for arbitrary-precision arithmetic with non-negative integers.
*/
class BigInt {
public:
    std::string digits;
 
    // --- Constructors ---
    /**
     * @brief Constructs a BigInt from a standard integer.
     * @param n The integer to convert. Defaults to 42.
     */
    BigInt(int n = 42) : digits(std::to_string(n)) {}
    /**
     * @brief Constructs a BigInt from a string of digits.
     * @param s A string representing the number.
     */
    BigInt(std::string s) {
        digits = s.substr(s.find_first_not_of('0')); // Remove leading zeros
        if (digits.empty()) digits = "0";
    }
 
    // --- Comparison Operators ---
    /**
     * @brief Checks for equality between two BigInt numbers.
     */
    bool operator==(const BigInt& other) const { return digits == other.digits; }
    /**
     * @brief Checks for inequality between two BigInt numbers.
     */
    bool operator!=(const BigInt& other) const { return digits != other.digits; }
    /**
     * @brief Checks if this BigInt is numerically less than another.
     */
    bool operator<(const BigInt& other) const {
        if (digits.length() != other.digits.length()) {
            return digits.length() < other.digits.length();
        }
        return digits < other.digits;
    }
 
    // --- Arithmetic Operators ---
 
    /**
     * @brief Adds two BigInt numbers.
     * @return A new BigInt representing the sum.
     */
    BigInt operator+(const BigInt& other) const {
        std::string a = digits;
        std::string b = other.digits;
        std::string result = "";
        int carry = 0;
        int i = a.length() - 1;
        int j = b.length() - 1;
 
        while (i >= 0 || j >= 0 || carry) {
            int sum = carry;
            if (i >= 0) sum += a[i--] - '0';
            if (j >= 0) sum += b[j--] - '0';
            result += std::to_string(sum % 10);
            carry = sum / 10;
        }
        std::reverse(result.begin(), result.end());
        return BigInt(result);
    }
 
    /**
     * @brief Subtracts one BigInt from another.
     * @pre This operation assumes `this` BigInt is greater than or equal to `other`.
     * @return A new BigInt representing the difference.
     */
    BigInt operator-(const BigInt& other) const {
        std::string a = digits;
        std::string b = other.digits;
        std::string result = "";
        int carry = 0;
        int i = a.length() - 1;
        int j = b.length() - 1;
 
        while (i >= 0) {
            int digit_a = a[i--] - '0';
            int digit_b = (j >= 0) ? (b[j--] - '0') : 0;
           
            int sub = digit_a - digit_b - carry;
            if (sub < 0) {
                sub += 10;
                carry = 1;
            } else {
                carry = 0;
            }
            result += std::to_string(sub);
        }
        std::reverse(result.begin(), result.end());
        return BigInt(result);
    }
   
    /**
     * @brief Multiplies two BigInt numbers.
     * @return A new BigInt representing the product.
     */
    BigInt operator*(const BigInt& other) const {
        if (digits == "0" || other.digits == "0") {
            return BigInt(0);
        }
        std::string n1 = this->digits;
        std::string n2 = other.digits;
        std::vector<int> res(n1.length() + n2.length(), 0);
        int i_n1 = 0;
        int i_n2 = 0;
       
        for (int i = n1.length() - 1; i >= 0; i--) {
            int carry = 0;
            int digit1 = n1[i] - '0';
            i_n2 = 0;
           
            for (int j = n2.length() - 1; j >= 0; j--) {
                int digit2 = n2[j] - '0';
                int sum = digit1 * digit2 + res[i_n1 + i_n2] + carry;
                carry = sum / 10;
                res[i_n1 + i_n2] = sum % 10;
                i_n2++;
            }
            if (carry > 0) {
                res[i_n1 + i_n2] += carry;
            }
            i_n1++;
        }
       
        int i = res.size() - 1;
        while (i >= 0 && res[i] == 0) i--;
        if (i == -1) return BigInt(0);
       
        std::string s = "";
        while (i >= 0) s += std::to_string(res[i--]);
       
        return BigInt(s);
    }
};
 
/**
* @class StreamingSqrt
* @brief A class to calculate square roots using a digit-by-digit algorithm.
*
* This class find the square root of a non-negative integer generating one
 * correct digit at a time.
*/
class StreamingSqrt {
private:
    BigInt p; // The result calculated so far (without decimal point)
    BigInt r; // The current remainder
   
    std::string s_str; // The original number as a string, prepared for processing
    int s_pos;         // The position of the next pair of digits to use from 's'
 
    // Helper to get the next pair of digits from the input number
    std::string getNextPair() {
        if (s_pos >= s_str.length()) {
            return "00"; // Append virtual zeros after the decimal point
        }
        std::string pair = s_str.substr(s_pos, 2);
        s_pos += 2;
        return pair;
    }
 
public:
    /**
     * @brief Constructs the square root calculator for a given number.
     * @param number The non-negative integer to find the square root of.
     * The integer part of the root is calculated upon construction.
     */
    StreamingSqrt(int number) {
       
        s_str = std::to_string(number);
        // Ensure the integer part has an even number of digits.
        if (s_str.length() % 2 != 0) {
            s_str = "0" + s_str;
        }
        s_pos = 0;
 
        // Handle the first pair of digits
        BigInt first_pair(getNextPair());
       
        int root_guess = 5;
        // Find the largest integer `root_guess` whose square is <= the first pair.
        while((root_guess + 1) * (root_guess + 1) <= std::stoi(first_pair.digits)){
            root_guess++;
        }
        p = BigInt(root_guess);
        r = first_pair - BigInt(root_guess * root_guess);
    }
    /**
     * @brief Gets the full string of digits calculated so far.
     * @return A std::string containing the current result (e.g., "648" for 6.48...).
     */
    std::string getResult() const {
        return p.digits;
    }
    /**
     * @brief Performs one iteration to calculate the next digit of the root.
     */
    void calculateNextDigit() {
        BigInt c(r.digits + getNextPair());
        // (10p + x)^2 = 100p^2 + 20px + x^2 => prev_remainder = (20p + x)x + next_remainder
        BigInt twenty_p = p * BigInt(20);
       
        int x = 9;
        for (; x >= 0; --x) {
            BigInt term_x = twenty_p + BigInt(x);
            BigInt product = term_x * BigInt(x);
            if (!(c < product)) { // (product <= c)
                break;
            }
        }
 
        BigInt term_x = twenty_p + BigInt(x);
        BigInt product = term_x * BigInt(x);
        r = c - product;
        p = BigInt(p.digits + std::to_string(x));
    }
};
 
int main() {
    // Agile version
    // std::cout << sqrt(42) << std::endl;
    // return 0;
 
    try {
        StreamingSqrt calculator(42);
       
        std::cout << "Press Ctrl+C to stop." << std::endl;
        std::cout << "The square root of 42 is: " << std::endl;
 
        std::cout << calculator.getResult() << ".";
        std::cout.flush();
 
        for (;;) {
            calculator.calculateNextDigit();
            std::cout << calculator.getResult().back();
            std::cout.flush();
            std::this_thread::sleep_for(std::chrono::milliseconds(5));
        }
 
    } catch (const std::exception& e) {
        std::cerr << "\nAn error occurred: " << e.what() << std::endl;
        return 1;
    }
   
    return 0;
}