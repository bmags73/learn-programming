## {{title}}

### Metadata
- **Authors**: {{authors}}
- **Year**: {{date}}
- **Citekey**: {{citekey}}
- **Tags**: #literature-note #unread

### Summary
{{abstractNote}}

### Notes
{% for annotation in annotations %}
{% if annotation.annotatedText %}
> {{annotation.annotatedText}}
{% endif %}

{% if annotation.comment %}
**Comment**: {{annotation.comment}}
{% endif %}

---
{% endfor %}

### Key Takeaways
- 

### Questions
- 

### Related to My Learning
<!-- How does this connect to what I'm learning? -->

### Code Examples
```python
# Add relevant code here
