#Given two strings s and t, return true if t is an anagram of s, and false otherwise.

class Solution {
    [bool] IsAnagram([string] $s, [string] $t) {
        # If the lengths of the strings are not equal, they cannot be anagrams
        if ($s.Length -ne $t.Length) {
            return $false.
        }

        $countS = @{}
        $countT = @{}

        for ($i = 0; $i -lt $s.Length; $i++) {
            # count how many times each letter appears in the two hashmaps.They should match.
            $countS[$s[$i]] = 1 + $countS.Get_Item($s[$i]) 
            $countT[$t[$i]] = 1 + $countT.Get_Item($t[$i])
        }

        return $countS.Equals($countT)
    }
}
