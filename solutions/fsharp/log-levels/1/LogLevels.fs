module LogLevels

let message (logLine: string): string = 
    let t = String.length(logLine)
    logLine.Substring(logLine.IndexOf(":") + 1).Trim()
let logLevel(logLine: string): string = 
    logLine.Substring(logLine.IndexOf("[") + 1, logLine.IndexOf("]") - 1).Trim().ToLower()
let reformat(logLine: string): string = 
    sprintf "%s (%s)" (message logLine) (logLevel logLine)
