import 'dart:html';

renderedText(n, [bool notShadow = false]) {
  if (n is List) {
    return n.map((nn) => renderedText(nn)).join("");
  }

  if (n is Comment) return '';

  if (!notShadow && n is Element && n.shadowRoot != null) {
    var shadowText = n.shadowRoot.text;
    var domText = renderedText(n, true);
    return shadowText.replaceFirst("SHADOW-CONTENT", domText);
  }

  if (n.nodes == null || n.nodes.length == 0) return n.text;

  return n.nodes.map((cn) => renderedText(cn)).join("");
}

main() {
  print("RenderedText: ${renderedText(document.body)}");
}
