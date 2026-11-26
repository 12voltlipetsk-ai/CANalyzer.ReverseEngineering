.class public Lcom/qinggan/otaservice/common/XMLParserCANZipInfo;
.super Ljava/lang/Object;
.source "XMLParserCANZipInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readXmlByPull(Ljava/io/InputStream;)Lcom/qinggan/otaservice/common/CANVersionInfo;
    .registers 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 11
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 13
    .local v2, "xmlpull":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "utf-8"

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 23
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 24
    .local v0, "eventCode":I
    const/4 v1, 0x0

    .line 25
    .local v1, "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    :goto_e
    const/4 v3, 0x1

    if-eq v0, v3, :cond_37

    .line 26
    packed-switch v0, :pswitch_data_38

    .line 42
    :cond_14
    :goto_14
    :pswitch_14
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_e

    .line 28
    :pswitch_19
    new-instance v1, Lcom/qinggan/otaservice/common/CANVersionInfo;

    .end local v1    # "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    invoke-direct {v1}, Lcom/qinggan/otaservice/common/CANVersionInfo;-><init>()V

    .line 29
    .restart local v1    # "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    goto :goto_14

    .line 32
    :pswitch_1f
    const-string v3, "version"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 33
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qinggan/otaservice/common/CANVersionInfo;->setVersion(Ljava/lang/String;)V

    goto :goto_14

    .line 44
    :cond_37
    return-object v1

    .line 26
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_19
        :pswitch_14
        :pswitch_1f
    .end packed-switch
.end method
