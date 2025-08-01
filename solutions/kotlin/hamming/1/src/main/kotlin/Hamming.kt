import java.lang.IllegalArgumentException

object Hamming {

    fun compute(leftStrand: String, rightStrand: String): Int {
        val dna_chars = listOf('C','A','G','T')
        var diff_ammount: Int = 0
        if (leftStrand.length != rightStrand.length)
            throw IllegalArgumentException("left and right strands must be of equal length")

        leftStrand.forEachIndexed { i, v ->
            if ( leftStrand[i] != rightStrand[i] && (dna_chars.contains(leftStrand[i]) && dna_chars.contains(rightStrand[i]))) {
                diff_ammount++
            }
        }

        return diff_ammount
    }
}
