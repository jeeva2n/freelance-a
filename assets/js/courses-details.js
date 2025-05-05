/**
 * Course Details JavaScript
 * Handles animations and interactions for the course details page
 */

document.addEventListener("DOMContentLoaded", () => {
  // Initialize animations for elements with animation classes
  const animateElements = document.querySelectorAll(
    ".animate-title, .animate-subtitle, .animate-image, .animate-left, .animate-right, .animate-up, .animate-fade-in",
  )

  // Add visible class to trigger animations
  setTimeout(() => {
    animateElements.forEach((element) => {
      element.classList.add("visible")
    })
  }, 100)

  // Handle accordion functionality
  const accordionButtons = document.querySelectorAll(".accordion-button")

  accordionButtons.forEach((button) => {
    button.addEventListener("click", function () {
      const isCollapsed = this.classList.contains("collapsed")

      // Reset all buttons to collapsed state
      accordionButtons.forEach((btn) => {
        btn.classList.add("collapsed")
        btn.setAttribute("aria-expanded", "false")
      })

      // Open the clicked accordion if it was closed
      if (isCollapsed) {
        this.classList.remove("collapsed")
        this.setAttribute("aria-expanded", "true")
      }
    })
  })

  // Smooth scroll for enrollment button
  const enrollButtons = document.querySelectorAll('a[href="#contact"]')

  enrollButtons.forEach((button) => {
    button.addEventListener("click", (e) => {
      e.preventDefault()

      const contactSection = document.querySelector("#contact")

      if (contactSection) {
        // Smooth scroll to contact section
        contactSection.scrollIntoView({
          behavior: "smooth",
        })

        // Focus on name field after scrolling
        setTimeout(() => {
          const nameField = document.querySelector("#name")
          if (nameField) {
            nameField.focus()
          }
        }, 1000)
      }
    })
  })
})
