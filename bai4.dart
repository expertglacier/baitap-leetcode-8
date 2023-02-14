class Solution {
  String restoreString(String s, List<int> indices) {
    // Tạo list result lưu giá trị đã được khôi phục của chuỗi s.
    List<String> result = List.generate(s.length, (index) => "");

    // Duyệt từ đầu đến cuối chuỗi s nguyên bản.
    for (int i = 0; i < s.length; i++) {
      // Chuyển các chữ cái từ về đúng vị trí theo list indices.
      result[indices[i]] = s[i];
    }

    // Trả về một chuỗi được chuyển đối từ list result.
    return result.join();
  }
}