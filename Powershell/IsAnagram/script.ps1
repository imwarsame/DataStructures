#Given two strings s and t, return true if t is an anagram of s, and false otherwise.

class Solution {
    [bool] IsAnagram([string] $s, [string] $t) {
        # If the lengths of the strings are not equal, they cannot be anagrams
        if ($s.Length -ne $t.Length) {
            return $false.
        }

        $countS = @{}  # Hashtable to store the count of each letter in string $s
        $countT = @{}  # Hashtable to store the count of each letter in string $t

        for ($i = 0; $i -lt $s.Length; $i++) {
            # Count how many times each letter appears in the two hashmaps. They should match.
            $countS[$s[$i]] = 1 + $countS.Get_Item($s[$i])  # Increment the count of letter $s[$i] in $countS
            $countT[$t[$i]] = 1 + $countT.Get_Item($t[$i])  # Increment the count of letter $t[$i] in $countT
        }

        return $countS.Equals($countT)  # Compare the two hashmaps to determine if they have the same letter counts
    }
}

