class Solution {
  List<int> shuffle(List<int> nums, int n) {
    // Khởi tạo biến lưu trữ kết quả xáo trộn.
    List<int> result = [];

    // Lặp qua nửa đầu và nửa sau của list nums.
    for (int i = 0; i < n; i++) {
      // Thêm phần tử hiện tại từ nửa đầu của list nums, và phần tử
      // hiện tại từ nửa sau của list nums, vào list result.
      result.addAll([nums[i], nums[n + i]]);
    }

    // Trả về kết quả cuối cùng đã xáo trộn.
    return result;
  }
}
