#Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.

function Contains-Duplicate {
    param (
        [Parameter(Mandatory=$true)]
        [int[]]$numbers
    )

    $hashset = @{}  # Hashtable to store encountered numbers

    foreach ($number in $numbers) {
        if ($hashset.ContainsKey($number)) {
            # A duplicate number has been found
            return $true
        }

        $hashset[$number] = $true  # Add the number to the hashtable
    }

    # No duplicates found
    return $false
}

