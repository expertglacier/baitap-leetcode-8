class Solution {
  bool isValid(String s) {
    // Khởi tạo list box dùng so sánh các dấu ngoặc.s
    List<String> box = [];

    // Nếu chuỗi s thừa một dấu ngoặc, trả về kết quả false.
    if (s.length % 2 != 0) return false;

    // Duyệt từ đầu đến cuối chuỗi s.
    for (int i = 0; i < s.length; i++) {
      // Chuỗi openBracket lưu kí tự hiện tại của chuỗi s.
      String openBracket = s[i];

      // Nếu kí tự hiện tại là dấu mở ngoặc.
      if (openBracket == "(" || openBracket == "[" || openBracket == "{") {
        // Thêm kí tự mở ngoặc hiện tại vào list box, bỏ qua các code bên dưới
        // và tiếp tục chạy vòng lặp for.
        box.add(s[i]);
        continue;
      } else if (box.isEmpty) {
        // Nếu list box rỗng (thiếu một dấu mở ngoặc), trả về kết quả false.
        return false;
      }

      // Chuỗi closeBracker lưu kí tự hiện tại của chuỗi s.
      String closeBracker = s[i];

      // Nếu kí tự cuối cùng trong list box và kí tự hiện tại của chuỗi s là cùng
      // một loại dấu ngoặc, và có tính chất đóng/mở. Thực hiện xoá dấu ngoặc
      // (cuối cùng) đã so sánh trong list box, bỏ qua các code bên dưới và tiếp
      // tục chạy vòng lặp for.
      if (box.last == "(" && closeBracker == ")") {
        box.removeLast();
        continue;
      } else if (box.last == "[" && closeBracker == "]") {
        box.removeLast();
        continue;
      } else if (box.last == "{" && closeBracker == "}") {
        box.removeLast();
        continue;
      }

      // Nếu kí tự cuối cùng trong list box và kí tự hiện tại của chuỗi s không cùng
      // một loại dấu ngoặc, và không có tính chất đóng/mở. Trả về kết quả false.
      return false;
    }

    // Kiểm tra list box, nếu vẫn chứa kí tự dấu ngoặc trả về false, ngược lại trả về true.
    return box.isEmpty;
  }
}
