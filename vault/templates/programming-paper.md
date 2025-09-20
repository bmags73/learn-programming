## {{title}}

### Metadata
- **Authors**: {{authors}}
- **Year**: {{date}}
- **Link**: [Zotero](zotero://select/items/@{{citekey}})
- **Tags**: #programming #needs-implementation

### Core Concepts
<!-- What computer science concepts does this introduce? -->

### Implementation Details
{% for annotation in annotations %}
{% if annotation.annotatedText %}
> {{annotation.annotatedText}}

{% if annotation.comment %}
💭 **My Note**: {{annotation.comment}}
{% endif %}
{% endif %}
{% endfor %}

### Code to Try
```python
# TODO: Implement the concept from this paper
