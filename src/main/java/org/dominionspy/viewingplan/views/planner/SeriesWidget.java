package org.dominionspy.viewingplan.views.planner;

import com.vaadin.flow.component.dashboard.DashboardWidget;
import com.vaadin.flow.component.html.Div;
import com.vaadin.flow.component.html.H3;
import com.vaadin.flow.component.html.Image;
import java.io.InputStream;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * A specialized DashboardWidget for displaying Star Trek series with a title and banner image.
 * This component standardizes the appearance of series widgets in the planner view.
 */
public class SeriesWidget extends DashboardWidget {
    private static final Logger logger = LoggerFactory.getLogger(SeriesWidget.class);

    /**
     * Creates a new SeriesWidget with the specified title and image path.
     *
     * @param title The title of the series
     * @param imagePath The path to the banner image for the series
     */
    public SeriesWidget(String title, String imagePath) {
        super(title);
        configureWidget(title, imagePath);
    }

    /**
     * Configures the widget with standard styling and content.
     *
     * @param title The title of the series (used for alt text)
     * @param imagePath The path to the banner image
     */
    private void configureWidget(String title, String imagePath) {
        // Set standard aspect ratio for all series widgets
        getElement().getStyle().set("aspect-ratio", "5 / 3");

        try {
            // Create and configure the title image
            Image titleImage = createImageWithFallback(imagePath, title);
            titleImage.getStyle().set("object-fit", "cover");
            titleImage.getStyle().set("min-width", "100%");
            titleImage.getStyle().set("max-height", "100%");

            // Add error handling for image loading
            titleImage.getElement().addEventListener("error", event -> {
                logger.warn("Failed to load image: {}", imagePath);
                setContent(createFallbackContent(title));
            }).addEventData("event.type");

            // Set the image as content of the widget
            setContent(titleImage);
        } catch (Exception e) {
            // Handle any exceptions during image creation
            logger.error("Error creating image component for {}: {}", title, e.getMessage());
            setContent(createFallbackContent(title));
        }
    }

    /**
     * Creates an image component with resource checking.
     *
     * @param path The path to the image
     * @param altText The alt text for the image
     * @return An Image component
     */
    private Image createImageWithFallback(String path, String altText) {
        // First check if the resource exists as a classpath resource
        InputStream resourceStream = getClass().getClassLoader().getResourceAsStream(path.replaceFirst("^/", ""));
        if (resourceStream != null) {
            try {
                resourceStream.close(); // Just checking existence, close it after
            } catch (Exception e) {
                logger.debug("Error closing resource stream", e);
            }
            return new Image(path, altText);
        }

        // If not found in classpath, still create the image but it will likely trigger the error handler
        return new Image(path, altText);
    }

    /**
     * Creates fallback content for when an image cannot be loaded.
     *
     * @param title The title of the series
     * @return A component to display as fallback
     */
    private Div createFallbackContent(String title) {
        Div fallbackDiv = new Div();
        fallbackDiv.getStyle()
                .set("background-color", "var(--lumo-contrast-10pct)")
                .set("display", "flex")
                .set("align-items", "center")
                .set("justify-content", "center")
                .set("width", "100%")
                .set("height", "100%");

        H3 titleElement = new H3(title);
        titleElement.getStyle()
                .set("margin", "0")
                .set("text-align", "center")
                .set("color", "var(--lumo-contrast-70pct)");

        fallbackDiv.add(titleElement);
        return fallbackDiv;
    }
}
