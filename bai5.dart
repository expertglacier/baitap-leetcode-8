class Solution {
  int countMatches(List<List<String>> items, String ruleKey, String ruleValue) {
    // Gán vị trí mặc định của ruleValue của biến items.
    int index = 0;
    // Đếm số lần items trùng với quy tắc đã cho.
    int count = 0;

    // Xác định vị trí ruleValue của biến item theo ruleKey.
    if (ruleKey == "color") {
      index = 1;
    } else if (ruleKey == "name") {
      index = 2;
    }

    // Duyệt qua từng items và đếm số lần trùng với ruleValue.
    for (int i = 0; i < items.length; i++) {
      if (items[i][index] == ruleValue) count++;
    }

    return count;
  }
}