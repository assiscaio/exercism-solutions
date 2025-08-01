internal fun twofer(name: String = ""): String {
    return "One for ${if (name.isNotEmpty()) name else "you"}, one for me."
}
