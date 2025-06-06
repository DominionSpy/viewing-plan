package org.dominionspy.viewingplan.domain;

import org.springframework.data.jpa.repository.JpaRepository;

public interface SeriesRepo extends JpaRepository<Series, Integer> {
    Series findByName(String name);
}
