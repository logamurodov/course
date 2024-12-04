package uz.pdp.demo11.entity;

import jakarta.persistence.Entity;
import jakarta.persistence.ManyToOne;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import uz.pdp.demo11.baseEntity.BaseEntity;
@Entity
@NoArgsConstructor@Data@AllArgsConstructor
public class Groups extends BaseEntity {
    private String name;
    @ManyToOne
    private Module module;
}
