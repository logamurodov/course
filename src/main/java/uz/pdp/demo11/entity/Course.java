package uz.pdp.demo11.entity;

import jakarta.persistence.Entity;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import uz.pdp.demo11.baseEntity.BaseEntity;
@Data
@AllArgsConstructor
@NoArgsConstructor

@Entity
public  class Course extends BaseEntity {
    private String courseName;
}
