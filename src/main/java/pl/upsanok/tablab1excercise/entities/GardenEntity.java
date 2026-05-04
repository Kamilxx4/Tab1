package pl.upsanok.tablab1excercise.entities;
import jakarta.persistence.*;
import lombok.*;

@Table(name = "garden")
@Entity(name = "garden")
@AllArgsConstructor
@Getter
@NoArgsConstructor
@Setter
@Builder


public class GardenEntity
{
    @EmbeddedId
    private GardenIdEmbedded gardenId;

    @ManyToOne
    @MapsId("flowerId")
    @JoinColumn(name = "flower_id")
    private FlowerEntity flowerEntity;

    @ManyToOne
    @MapsId("userId")
    @JoinColumn(name = "user_id")
    private UserEntity userEntity;
}
