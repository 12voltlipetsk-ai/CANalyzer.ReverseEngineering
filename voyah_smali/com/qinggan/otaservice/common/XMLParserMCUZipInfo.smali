.class public Lcom/qinggan/otaservice/common/XMLParserMCUZipInfo;
.super Ljava/lang/Object;
.source "XMLParserMCUZipInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readXmlByPull(Ljava/io/InputStream;)Lcom/qinggan/otaservice/common/MCUVersionInfo;
    .registers 6
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 12
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 14
    .local v2, "xmlpull":Lorg/xmlpull/v1/XmlPullParser;
    const-string v3, "utf-8"

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 24
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 25
    .local v0, "eventCode":I
    const/4 v1, 0x0

    .line 26
    .local v1, "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    :goto_e
    const/4 v3, 0x1

    if-eq v0, v3, :cond_4f

    .line 27
    packed-switch v0, :pswitch_data_50

    .line 45
    :cond_14
    :goto_14
    :pswitch_14
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_e

    .line 29
    :pswitch_19
    new-instance v1, Lcom/qinggan/otaservice/common/MCUVersionInfo;

    .end local v1    # "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    invoke-direct {v1}, Lcom/qinggan/otaservice/common/MCUVersionInfo;-><init>()V

    .line 30
    .restart local v1    # "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    goto :goto_14

    .line 33
    :pswitch_1f
    const-string v3, "platform"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    .line 34
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qinggan/otaservice/common/MCUVersionInfo;->setPlatform(Ljava/lang/String;)V

    goto :goto_14

    .line 35
    :cond_37
    const-string v3, "version"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 36
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/qinggan/otaservice/common/MCUVersionInfo;->setVersion(Ljava/lang/String;)V

    goto :goto_14

    .line 47
    :cond_4f
    return-object v1

    .line 27
    :pswitch_data_50
    .packed-switch 0x0
        :pswitch_19
        :pswitch_14
        :pswitch_1f
    .end packed-switch
.end method
