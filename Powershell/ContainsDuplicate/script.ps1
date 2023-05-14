#Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

function Contains-Duplicate {
    param (
        [Parameter(Mandatory=$true)]
        [int[]]$nums
    )

    $hashset = @{}

    foreach ($n in $nums) {
        if ($hashset.ContainsKey($n)) {
            return $true
        }

        $hashset[$n] = $true
    }

    return $false
}
