# TO TEST REGEX
# https://regexper.com/

module.exports =
    source:
        DEFINITION:
            regex:
                jinie: /[^\S\n]*JINIE\s+([\w. ]*)/gmi
        js:
            regex:
                commentaire: /^[^\S\n]*\/\/ ! (.+)/gmi
                commentaire_multi: /^[^\S\n]*\/\* ! (.+)[^\/]*\*\//gmi
                class: /^[^\S\n]*class ([\w]+(?: extends [\w]+)*)/gmi
                class_expression: /^[^\S\n]*([\w]+)\s*=\s*class\s{/gmi
                function: /^[^\S\n]*(?:final|static|abstract|private|protected|public|async|export|[^\S\n])*function\s?([\w]+ *\([^\)]*\))/gmi
                controller: /^[^\S\n]*\.controller\s*\(\s*["']+([\w]+)["']+[\s,]*function/gmi
                method: /^[^\S\n]*(?:.*)(\b\w+\b)\s*(?:=|:)\s*function/gmi
                es6method: /^[^\S\n]*(?:[*][\s\n]+)?(?:async[\s\n]+)?(?!foreach|if|for|while|catch)([\w]+\(.*\))[\s\n]*{/gmi
                es6constfunction: /^[\s]*(?:export[\s]+)?const[\s]+([\w]+)[\s]+=[\s]+\(.*\)[\s]+=>/gmi
                constant: /^[^\S\n]*\.constant\(["']+([\w]+)["']+/gmi
                filter: /^[^\S\n]*\.filter\(["']+([\w]+)["']+/gmi
                structure: /^[^\S\n]*\.(config|run)\(function/gmi
                setter: /^[ ]*set[ ]+([^ (]+\(.*\))/gmi
                getter: /^[ ]*get[ ]+([^ (]+\(.*\))/gmi
                todo: /(?:\/\*|\/\/)[ ]*todo\:[ ]*(.+?)[ ]*(?:\*\/)?(?:[\r\n])/gmi
                fixme: /(?:\/\*|\/\/)[ ]*fixme\:[ ]*(.+?)[ ]*(?:\*\/)?(?:[\r\n])/gmi
                hack: /(?:\/\*|\/\/)[ ]*hack\:[ ]*(.+?)[ ]*(?:\*\/)?(?:[\r\n])/gmi
        coffee:
            regex:
                function: /^[^\S\n]*([\w]+:)\s*(?:\([^\)]*\))?\s*->/gmi
                class: /^[\S\n]*class ([\w]+)/gmi
                todo: /#[ ]*todo\:[ ]*(.+?)[ ]*(?:[\r\n])/gmi
                fixme: /#[ ]*fixme\:[ ]*(.+?)[ ]*(?:[\r\n])/gmi
                hack: /#[ ]*hack\:[ ]*(.+?)[ ]*(?:[\r\n])/gmi
