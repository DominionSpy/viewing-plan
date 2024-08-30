package org.dominionspy.viewingplan.domain;

import java.io.InputStream;
import java.util.Arrays;
import java.util.List;

import com.fasterxml.jackson.databind.ObjectMapper;
import org.springframework.core.io.ClassPathResource;

public class SettingsService {

    public static Settings[] getItems() {
        ObjectMapper mapper = new ObjectMapper();
        try {
            InputStream stream = new ClassPathResource("data/settings.json")
                    .getInputStream();
            return mapper.readValue(stream, Settings[].class);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return new Settings[0];
    }

    public static List<Settings> getSettings() {
        return Arrays.asList(getItems());
    }

    public static Settings getSettingsBySeries(String series) {
        return Arrays.stream(getItems())
                .filter(settings -> settings.series().equals(series))
                .findFirst()
                .orElse(null);
    }
}
