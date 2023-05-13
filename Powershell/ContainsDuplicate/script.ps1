#Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

function Contains-Duplicate ([string[]]$array)
{
    $ht = @{}

    foreach ($item in $array) {
        if ($ht -contains $item) {
            return true
        }
        $ht.add($item)
    return false
    }
}



