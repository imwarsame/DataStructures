# Given an array of integers nums and an integer target, return indices of the two numbers such that they add up to target.


function TwoSum($nums, $target) {
    $hashtable = @{}
    for ($idx = 0; $idx -lt $nums.Length; $idx++) {
        $num = $nums[$idx]

        if ($hashtable.ContainsKey($target - $num)) {
            return @($hashtable[$target - $num], $idx)
        }

        $hashtable[$num] = $idx
    }
    return $null
}
