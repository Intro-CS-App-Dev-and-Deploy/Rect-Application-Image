# Rect-Application-Image
Using rect() to draw an image to the Canvas

## Questions
- How do I display images in the canvas?
- How do I retain aspect ratio (image displays the same as the original presentation)?
- What is the arithmetic of aspect ratio?
- How do I code this into variables?

Note: demonstrate Aspect Ratio in WORD with Image Corners and what returns

## Expectations: display images in rectangles
. Lesson: as a background in the CANVAS using tint() to limit colour overlay (in flat program)
. Lesson: in small rectangles in a canvas
  - one with aspect ratio
  - one without aspect ratio

Address issue of design in multiple windows

## Instructions, Vocabulary, & Explanations (Including URLs and IDE Use)
- Save an image to the GitHub Project folder (beside your Processing-JAVA app, see exemplars)
  - Able to download an image but ensure URL or file ends with .jpg, .gif, .png
  - Refer to https://processing.org/reference/image_.html for updates (last accessed 20201104)
- Draw a rectangle to the Canvas
  - Note the presentation as square, landscape, or portrait
  - Fill the background with colour (i.e. red) so visual debugging if image aspect ratio is too small
  - [OPTION] Able to use Single-Line-IF to return issue, illustrated below
  - [Advanced Option]: using IF to trigger self-correcting aspect ratio (beyond CS10), called error catching
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

Algorithm Question
- Are you using my stretch algorithm, single stretch <1
- What are other algorithms that are similar?

Single Text Assignment
- Two Rectangles with text anywhere on the screen

---

Purpose: begin a new Processing Program and add code as needed

Single Image Assignment
- Case Study Background Image with tint() & CANVAS divided in half
- Top Half: single rectangle filled with image by aspect ratio
- Bottom Half: single rectangle filled with image, no aspect ratio
- Include night mode switch using keyboard or mouse

Note: my algorithm takes the larger dimension and calculates the smaller dimension with a <1

Ideas for other algorithms
- similar algorithm to mine, uses >1
- research about aspect ratio and a different algorithm from the internet

Expectation: label with images with "Aspect Ratio" and "No Aspect Ratio" (using text assignment too)

Clip Board Checking
- New Repository & New Processing Program
- Background and other image downloaded and added to folder (Not mine)
- Two Rectangles visible, top half and bottom half (or left and right)
- rectangle layout for text
- Background Image displayed, tint() working for colour overlays
- Aspect Image displayed
- No Aspect Image displayed
- Text Working and Readable
- Aspect Ratio Mine or Other

---


CAUTION: read the 05 CLean Algorithm first and work backwards
- breaking variables is a good way to emphasize meaning
- first time through, single-line-IFs with Booleans
- second time through, two IF-Else's with Booleans
- third time throgh, one IF-Else coped with changing alpha numeric values and referenced rect() layout parameters

Lessons should begin with flowcharts of larger dimension image stretch and shrinking

Image stretch to the background is one algorithm

Image inside rectangles would be shrinking algorithm

The purpose of all lessons is to combine algorithms to answer following questions
- Canvas will hold entire image
- Aspect Ratio can be used if needed, but known to be rare (so centering and filling rectangle background is necessary)

CAUTION: final lesson is introduction to procedure with values passing

---

Changes to nightmode and brightness