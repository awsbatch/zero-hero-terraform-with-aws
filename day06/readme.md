| Type       | Ordered | Allows Duplicates | Same Type Required | Use Case                       |
| ---------- | ------- | ----------------- | ------------------ | ------------------------------ |
| **string** | ❌       | N/A               | N/A                | Names, regions, IDs            |
| **number** | ❌       | N/A               | N/A                | Counts, sizes, ports           |
| **bool**   | ❌       | N/A               | N/A                | Enable/disable flags           |
| **list**   | ✅       | ✅                 | ✅                  | Multiple values, order matters |
| **set**    | ❌       | ❌                 | ✅                  | Unique values only             |
| **map**    | ❌       | Keys unique       | ✅                  | Key–value config               |
| **object** | ❌       | N/A               | Defined per key    | Structured configs             |
| **tuple**  | ✅       | ✅                 | ❌                  | Fixed mixed values             |
