class Solution {
  List<int> plusOne(List<int> digits) {
    // Khởi tạo biến carry lưu số nhớ.
    int carry = 1;
    List<int> result = [];

    // Kiểm tra số cuối cùng của list input có nhỏ hơn 9.
    if (digits.last < 9) {
      // Nếu số cuối cùng của list digits nhỏ hơn 9, cộng 1 vào nó.
      result.add(digits.last + 1);

      // Thêm các số còn lại của list digits được đảo ngược vào list result.
      for (int i = digits.length - 2; i >= 0; i--) {
        result.add(digits[i]);
      }

      // Trả về một list đảo ngược của list result.
      return result.reversed.toList();
    }

    // Duyệt từng phần tử của list digits đảo ngược.
    for (int i = digits.length - 1; i >= 0; i--) {
      // Tính tổng của số hiện tại cộng và số nhớ (carry).
      int sum = digits[i] + carry;

      // Nếu tổng nhỏ hơn hoặc bằng 9.
      if (sum <= 9) {
        // Thêm nó vào cuối list result, và reset carry thành 0.
        result.add(sum);
        carry = 0;
      } else if (sum > 9 && i > 0) {
        // Nếu tổng lớn hơn 9 và không phải là số đầu tiên của list digits.
        // Thêm 0 vào cuối list result, và gán giá trị carry thành 1.
        result.add(0);
        carry = 1;
      } else if (sum > 9 && i == 0) {
        // Nếu tổng lớn hơn 9 và nó là số đầu tiên của list digits.
        // Thêm 0 và 1 vào cuối list result.
        result.addAll([0, 1]);
      }
    }

    // Trả về một list đảo ngược của list result.
    return result.reversed.toList();
  }
}
