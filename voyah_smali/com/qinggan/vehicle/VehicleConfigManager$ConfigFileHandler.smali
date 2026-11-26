.class Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "VehicleConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/vehicle/VehicleConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ConfigFileHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/vehicle/VehicleConfigManager;


# direct methods
.method constructor <init>(Lcom/qinggan/vehicle/VehicleConfigManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/vehicle/VehicleConfigManager;

    .prologue
    .line 184
    iput-object p1, p0, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public endDocument()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v1, p0, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    # getter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;
    invoke-static {v1}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$000(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/vehicle/VehicleConfig;

    .line 192
    .local v0, "cfg":Lcom/qinggan/vehicle/VehicleConfig;
    invoke-virtual {v0}, Lcom/qinggan/vehicle/VehicleConfig;->printString()V

    goto :goto_a

    .line 194
    .end local v0    # "cfg":Lcom/qinggan/vehicle/VehicleConfig;
    :cond_1a
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 222
    return-void
.end method

.method public startDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 187
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 12
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "carType":Ljava/lang/String;
    const/4 v2, 0x1

    .line 201
    .local v2, "shutDownMode":I
    const-string v4, "cartype"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 202
    const-string v4, "name"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 203
    if-eqz v0, :cond_28

    iget-object v4, p0, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    # getter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;
    invoke-static {v4}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$000(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 204
    new-instance v1, Lcom/qinggan/vehicle/VehicleConfig;

    invoke-direct {v1, v0, v2}, Lcom/qinggan/vehicle/VehicleConfig;-><init>(Ljava/lang/String;I)V

    .line 205
    .local v1, "cfg":Lcom/qinggan/vehicle/VehicleConfig;
    iget-object v4, p0, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    # getter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;
    invoke-static {v4}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$000(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .end local v1    # "cfg":Lcom/qinggan/vehicle/VehicleConfig;
    :cond_28
    :goto_28
    return-void

    .line 207
    :cond_29
    const-string v4, "shutdown"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5b

    .line 208
    const-string v4, "value"

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 210
    iget-object v4, p0, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    # getter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;
    invoke-static {v4}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$000(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    # getter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;
    invoke-static {v5}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$000(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qinggan/vehicle/VehicleConfig;

    invoke-virtual {v4, v2}, Lcom/qinggan/vehicle/VehicleConfig;->setShutDownMode(I)V

    goto :goto_28

    .line 211
    :cond_5b
    const-string v4, "camera"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_93

    .line 212
    invoke-static {}, Lcom/qinggan/vehicle/ReverseCameraType;->values()[Lcom/qinggan/vehicle/ReverseCameraType;

    move-result-object v4

    const-string v5, "value"

    invoke-interface {p4, v5}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v3, v4, v5

    .line 213
    .local v3, "type":Lcom/qinggan/vehicle/ReverseCameraType;
    iget-object v4, p0, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    # getter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;
    invoke-static {v4}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$000(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    # getter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;
    invoke-static {v5}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$000(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qinggan/vehicle/VehicleConfig;

    invoke-virtual {v4, v3}, Lcom/qinggan/vehicle/VehicleConfig;->setCameraType(Lcom/qinggan/vehicle/ReverseCameraType;)V

    goto :goto_28

    .line 215
    .end local v3    # "type":Lcom/qinggan/vehicle/ReverseCameraType;
    :cond_93
    const-string v4, "VehicleConfigManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not care vehicle config element : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_28
.end method
