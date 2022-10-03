az policy definition create --name tagging-policy --subscription "Free Trial" \
--params "{ \"tagName\": { \"type\": \"String\", \"metadata\": { \"displayName\": \"Tag Name\", \"description\": \"Name of the tag is required, such as 'environment'\" } } }" \
--rules "{\"if\": { \"field\": \"[concat('tags[', parameters('tagName'), ']')]\", \"exists\": \"false\" }, \"then\": { \"effect\": \"deny\" }}"