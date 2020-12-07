# Rect-Application-Image
Using rect() to draw an image to the Canvas

## Questions
- How do I display images in the canvas
- How do I retain aspect ratio (image displays the same as the original presentation)
- What is the arithmetic of aspect ratio?
- How do I code this into variables

Note: demonstrate Aspect Ratio in WORD with Image Corners and what returns

## Expectations
- Display an image in a rectangle
  - Example One: in a canvas
  - Example Two: in small rectangles in a canvas

## Instructions, Vocabulary, & Explanations (Including URLs and IDE Use)
- Save an image to the GitHub Project folder (beside your Processing-JAVA app, see exemplars)
  - Able to download an image but ensure URL or file ends with .jpg, .gif, .png
  - Refer to https://processing.org/reference/image_.html for updates (last accessed 20201104)
- Draw a rectangle to the Canvas
  - Note the presentation as square, landscape, or portrait
- Inspect the image for geometry
  - Image File & Right-Mouse-Click / Properties / Details / Record width and height as comment
  - Note the presentation as square, landscape, or portrait
- Create Aspect Ratios based on matching or mismatched presentation of rectangle and image
  - See `flatMutlipleImage.pde` exemplar for explanation
  - Longest dimension should = 1 (similar to CSS, style="width:100%")
  - Shorter dimension should < 1 (similar to CSS, style="height:auto")
- Identify the image dimension that remains the same
- Identify the image dimension that becomes smaller
- CAUTION: if drawing an image into a rectangle and a dimension doesn't fit, either resize the image with an online tool or layer a piece of visual data overtop to hide the part of the image "spilling over the rectangle"
  - See flatMutlipleImage.pde for explanation
- Create the image-specific-rectangle variables
- Draw image to Canvas
- Inspect for image-too-small or image-too-big (GUI Design with Aspect Ratio)

## Blocks of code, Emphasized Functions
- Global Variables
- Display Geometry, noting presentation (square, landscape, or portrait)
- Variable Population, Aspect Ratio Calculations, and Image-specific canvas variables
- Catching errors of aspect ratio based on original display geometry (from `size()` or `fullScreen()`)
- Drawing the image to the Canvas using `image()`

## Specific Functions and Parameters emphasized here
- `PIamge`
- `loadImage()`: could be file or URL
- `if () ;`: single-line IF decision with println() remembering inequalities
- `image()`

- Notice rect() parameters are floats and require strongly formatted variables
- Ratios must be decimals if rect() parameters are also decimals
  - if Ratio Values are integers, then Processing will cast `float` as `int`
  - Then, Processing will truncate multiplication of aspect ratio to zero (remove all decimal values leaving 0. )
  - This creates a bug only seen by println of the formula or variable

## Gamification or Rubric or Points
- [1 point] Rectangle planning viewable in Canvas
- [1 point] Image displayed with proper aspect ratio
- [1 point] Debugging information available in console if needed (from `println`)

## Additional Information to Answer Questions
Aspect Ratio retains original presentation of Image
- causes design issue viewable when inserting image into a rectangle
- sections of rectangle are empty
- problem should be solved with other design solutions

## Extensions
- Review Processing.org / Reference / Search Image for more image effects like tint and transparency
---

# To Include


---
