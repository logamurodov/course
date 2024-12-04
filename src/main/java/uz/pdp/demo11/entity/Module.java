package uz.pdp.demo11.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import uz.pdp.demo11.baseEntity.BaseEntity;
@Data@NoArgsConstructor@AllArgsConstructor
@Entity
public class Module extends BaseEntity {
    private String modulName;
    @ManyToOne
    private Course course;
}
