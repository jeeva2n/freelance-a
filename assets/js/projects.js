/**
 * Projects Page JavaScript
 * Handles filtering, modal functionality, and animations
 */

document.addEventListener("DOMContentLoaded", () => {
    // Initialize AOS animation library
    AOS = window.AOS
    AOS.init({
      duration: 1000,
      easing: "ease-in-out",
      once: true,
      mirror: false,
    })
  
    // Project filtering functionality
    const filterButtons = document.querySelectorAll(".filter-btn")
    const projectCards = document.querySelectorAll(".project-card")
    const domainSections = document.querySelectorAll(".domain-section")
  
    // Add click event to filter buttons
    filterButtons.forEach((button) => {
      button.addEventListener("click", () => {
        // Remove active class from all buttons
        filterButtons.forEach((btn) => btn.classList.remove("active"))
  
        // Add active class to clicked button
        button.classList.add("active")
  
        const filterValue = button.getAttribute("data-filter")
  
        // Show/hide projects based on filter
        if (filterValue === "all") {
          // Show all domain sections
          domainSections.forEach((section) => {
            section.style.display = "block"
          })
  
          // Show all project cards
          projectCards.forEach((card) => {
            card.style.display = "block"
          })
        } else {
          // Hide all domain sections initially
          domainSections.forEach((section) => {
            section.style.display = "none"
          })
  
          // Show only the domain section that matches the filter
          document.querySelectorAll(`.domain-section h3[id^="${filterValue}"]`).forEach((title) => {
            title.closest(".domain-section").style.display = "block"
          })
  
          // Show only project cards that match the filter
          projectCards.forEach((card) => {
            if (card.getAttribute("data-category") === filterValue) {
              card.style.display = "block"
            } else {
              card.style.display = "none"
            }
          })
        }
      })
    })
  
    // Project Details Modal Functionality
    const modal = document.getElementById("project-details-modal")
    const closeModal = document.querySelector(".close-modal")
    const viewDetailsButtons = document.querySelectorAll(".view-details")
  
    // Project data (would typically come from a database)
    const projectData = {
      // Web Development Projects
      "web-1": {
        title: "E-commerce Website",
        category: "Web Development",
        image: "/placeholder.svg?height=400&width=600",
        description:
          "A fully responsive e-commerce platform designed to provide an exceptional shopping experience. The website includes a comprehensive product catalog, intuitive shopping cart, secure checkout process, and seamless payment integration.",
        technologies: ["HTML5", "CSS3", "JavaScript", "PHP", "MySQL", "Bootstrap"],
        features: [
          "Responsive design that works on all devices",
          "Product search and filtering capabilities",
          "User account management and order history",
          "Secure payment processing with multiple options",
          "Admin dashboard for inventory and order management",
          "SEO-optimized product pages",
        ],
        outcome:
          "The e-commerce platform resulted in a 40% increase in online sales and significantly improved user engagement metrics. The responsive design reduced bounce rates on mobile devices by 25%.",
      },
      "web-2": {
        title: "Portfolio Website",
        category: "Web Development",
        image: "/placeholder.svg?height=400&width=600",
        description:
          "A modern, responsive portfolio website designed to showcase creative work with smooth animations and interactive elements. The site features a clean, minimalist design that puts the focus on the content while providing an engaging user experience.",
        technologies: ["HTML5", "CSS3", "JavaScript", "jQuery", "GSAP", "Webpack"],
        features: [
          "Smooth page transitions and scroll animations",
          "Interactive project gallery with filtering options",
          "Lazy loading images for improved performance",
          "Contact form with validation and email integration",
          "Dark/light mode toggle",
          "Fully responsive across all device sizes",
        ],
        outcome:
          "The portfolio website helped the client secure multiple new projects and establish a strong online presence. The engaging design resulted in visitors spending an average of 3.5 minutes on the site, significantly above industry standards.",
      },
      "web-3": {
        title: "Blog Platform",
        category: "Web Development",
        image: "/placeholder.svg?height=400&width=600",
        description:
          "A feature-rich blog platform with a robust content management system, user authentication, and an interactive commenting system. The platform was designed to handle high traffic volumes while maintaining fast load times and a seamless user experience.",
        technologies: ["HTML5", "CSS3", "JavaScript", "PHP", "MySQL", "Laravel"],
        features: [
          "Custom CMS for content creation and management",
          "User registration and authentication system",
          "Real-time commenting with moderation tools",
          "Content categorization and tagging",
          "Advanced search functionality",
          "Social media integration and sharing",
        ],
        outcome:
          "The blog platform increased user engagement by 65% and reduced content publishing time by 50%. The improved SEO features resulted in a 30% increase in organic traffic within three months of launch.",
      },
  
      // App Development Projects
      "app-1": {
        title: "Fitness Tracker App",
        category: "App Development",
        image: "/placeholder.svg?height=400&width=600",
        description:
          "A comprehensive mobile application for tracking workouts, setting fitness goals, and monitoring progress. The app provides personalized workout plans, nutrition tracking, and progress visualization to help users achieve their fitness goals.",
        technologies: ["React Native", "Firebase", "Redux", "Node.js", "Express"],
        features: [
          "Personalized workout plans based on user goals",
          "Real-time progress tracking and statistics",
          "Nutrition logging and calorie calculator",
          "Social features for sharing achievements",
          "Integration with wearable fitness devices",
          "Offline functionality for workouts without internet",
        ],
        outcome:
          "The fitness tracker app has been downloaded over 50,000 times with a 4.7-star average rating. User retention rates are 40% higher than industry average, with 65% of users reporting improved fitness results.",
      },
      "app-2": {
        title: "Food Delivery App",
        category: "App Development",
        image: "/placeholder.svg?height=400&width=600",
        description:
          "A comprehensive food delivery application that connects users with local restaurants. The app features restaurant listings, menu browsing, order placement, and real-time delivery tracking to provide a seamless food ordering experience.",
        technologies: ["Flutter", "Dart", "Firebase", "Google Maps API", "Stripe"],
        features: [
          "Geolocation-based restaurant recommendations",
          "Advanced search and filtering options",
          "Real-time order tracking with map integration",
          "Multiple payment methods including digital wallets",
          "Order scheduling for future deliveries",
          "In-app chat with delivery personnel",
        ],
        outcome:
          "The food delivery app has facilitated over 100,000 orders in its first year, generating substantial revenue for local restaurants. Customer satisfaction scores average 4.8/5, with delivery time accuracy improved by 30% compared to competitors.",
      },
      "app-3": {
        title: "Task Management App",
        category: "App Development",
        image: "/placeholder.svg?height=400&width=600",
        description:
          "A productivity app designed to help individuals and teams organize tasks, set reminders, and collaborate on projects. The app features an intuitive interface, powerful organization tools, and seamless synchronization across devices.",
        technologies: ["Kotlin", "Android SDK", "Room Database", "WorkManager", "Material Design"],
        features: [
          "Task creation with priority levels and deadlines",
          "Project organization with subtasks and dependencies",
          "Calendar integration and smart reminders",
          "Team collaboration with task assignment",
          "Progress tracking and productivity analytics",
          "Cloud synchronization across multiple devices",
        ],
        outcome:
          "The task management app has helped teams increase productivity by an average of 35%. User feedback indicates a significant reduction in missed deadlines and improved project completion rates.",
      },
  
      // Add more project data for other categories...
      // MERN Stack Projects
      "mern-1": {
        title: "Social Media Platform",
        category: "MERN Stack",
        image: "/placeholder.svg?height=400&width=600",
        description:
          "A full-stack social media application built with the MERN stack, featuring user profiles, posts, comments, and real-time notifications. The platform provides a responsive and interactive user experience with modern design principles.",
        technologies: ["MongoDB", "Express.js", "React", "Node.js", "Socket.io", "AWS S3"],
        features: [
          "User authentication with JWT and social login options",
          "Real-time notifications and messaging",
          "Media sharing with image and video support",
          "News feed with personalized content algorithm",
          "User profile customization and privacy settings",
          "Content moderation and reporting system",
        ],
        outcome:
          "The social media platform has attracted over 10,000 active users within six months of launch. Engagement metrics show users spending an average of 25 minutes per session, with 70% returning daily.",
      },
      "mern-2": {
        title: "Job Portal",
        category: "MERN Stack",
        image: "/placeholder.svg?height=400&width=600",
        description:
          "A comprehensive job search and application platform built with the MERN stack. The portal features separate interfaces for employers and job seekers, resume uploads, and application tracking to streamline the hiring process.",
        technologies: ["MongoDB", "Express.js", "React", "Node.js", "Redux", "Cloudinary"],
        features: [
          "Advanced job search with multiple filters",
          "Company profiles and reviews",
          "Resume builder and ATS-friendly templates",
          "Application tracking for candidates",
          "Applicant management for employers",
          "Job matching algorithm based on skills and experience",
        ],
        outcome:
          "The job portal has facilitated over 5,000 successful job placements. Employers report a 40% reduction in time-to-hire, while job seekers have experienced a 35% higher response rate compared to traditional job boards.",
      },
      "mern-3": {
        title: "E-learning Platform",
        category: "MERN Stack",
        image: "/placeholder.svg?height=400&width=600",
        description:
          "An online learning platform built with the MERN stack, offering course creation, enrollment, video lessons, quizzes, and progress tracking. The platform provides an interactive learning experience with features designed to enhance student engagement and instructor effectiveness.",
        technologies: ["MongoDB", "Express.js", "React", "Node.js", "AWS S3", "Stripe"],
        features: [
          "Course creation with multimedia content support",
          "Interactive quizzes and assignments",
          "Progress tracking and certificates",
          "Discussion forums for each course",
          "Subscription and one-time payment options",
          "Analytics dashboard for instructors",
        ],
        outcome:
          "The e-learning platform has hosted over 200 courses with a 92% completion rate, significantly higher than industry average. Student satisfaction scores average 4.8/5, with 85% reporting improved learning outcomes.",
      },
    }
  
    // Open modal when View Details is clicked
    viewDetailsButtons.forEach((button) => {
      button.addEventListener("click", (e) => {
        e.preventDefault()
        const projectId = button.getAttribute("data-project")
        const project = projectData[projectId]
  
        if (project) {
          // Populate modal with project data
          document.getElementById("modal-project-title").textContent = project.title
          document.getElementById("modal-project-category").textContent = project.category
          document.getElementById("modal-project-image").src = project.image
          document.getElementById("modal-project-image").alt = project.title
          document.getElementById("modal-project-description").textContent = project.description
  
          // Add technologies
          const techContainer = document.getElementById("modal-project-tech")
          techContainer.innerHTML = ""
          project.technologies.forEach((tech) => {
            const span = document.createElement("span")
            span.textContent = tech
            techContainer.appendChild(span)
          })
  
          // Add features
          const featuresList = document.getElementById("modal-project-features")
          featuresList.innerHTML = ""
          project.features.forEach((feature) => {
            const li = document.createElement("li")
            li.textContent = feature
            featuresList.appendChild(li)
          })
  
          // Add outcome
          document.getElementById("modal-project-outcome").textContent = project.outcome
  
          // Show modal
          modal.style.display = "block"
          setTimeout(() => {
            modal.classList.add("show")
          }, 10)
  
          // Prevent body scrolling
          document.body.style.overflow = "hidden"
        }
      })
    })
  
    // Close modal when X is clicked
    closeModal.addEventListener("click", () => {
      modal.classList.remove("show")
      setTimeout(() => {
        modal.style.display = "none"
        // Re-enable body scrolling
        document.body.style.overflow = "auto"
      }, 300)
    })
  
    // Close modal when clicking outside the content
    window.addEventListener("click", (e) => {
      if (e.target === modal) {
        modal.classList.remove("show")
        setTimeout(() => {
          modal.style.display = "none"
          // Re-enable body scrolling
          document.body.style.overflow = "auto"
        }, 300)
      }
    })
  
    // Smooth scrolling for anchor links
    document.querySelectorAll('a[href^="#"]').forEach((anchor) => {
      anchor.addEventListener("click", function (e) {
        if (this.getAttribute("href") !== "#project-details") {
          e.preventDefault()
          const target = document.querySelector(this.getAttribute("href"))
          if (target) {
            window.scrollTo({
              top: target.offsetTop - 100,
              behavior: "smooth",
            })
          }
        }
      })
    })
  })
  