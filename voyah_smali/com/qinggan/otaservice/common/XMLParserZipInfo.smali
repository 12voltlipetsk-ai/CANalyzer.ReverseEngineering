.class public Lcom/qinggan/otaservice/common/XMLParserZipInfo;
.super Ljava/lang/Object;
.source "XMLParserZipInfo.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkPKGType(Ljava/io/InputStream;)Ljava/lang/String;
    .registers 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 85
    .local v3, "xmlpull":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "utf-8"

    invoke-interface {v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 91
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 92
    .local v0, "eventCode":I
    const/4 v1, 0x0

    .line 93
    .local v1, "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    const/4 v2, 0x0

    .line 94
    .local v2, "type":Ljava/lang/String;
    :goto_f
    const/4 v4, 0x1

    if-eq v0, v4, :cond_2f

    .line 95
    packed-switch v0, :pswitch_data_30

    .line 111
    :cond_15
    :goto_15
    :pswitch_15
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_f

    .line 101
    :pswitch_1a
    const-string v4, "type"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 102
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    .line 113
    :cond_2f
    return-object v2

    .line 95
    :pswitch_data_30
    .packed-switch 0x0
        :pswitch_15
        :pswitch_15
        :pswitch_1a
    .end packed-switch
.end method

.method public static readXmlByPull(Ljava/io/InputStream;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .registers 7
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 14
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    .line 16
    .local v3, "xmlpull":Lorg/xmlpull/v1/XmlPullParser;
    const-string v4, "utf-8"

    invoke-interface {v3, p0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 22
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 23
    .local v0, "eventCode":I
    const/4 v1, 0x0

    .line 24
    .local v1, "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :goto_e
    const/4 v4, 0x1

    if-eq v0, v4, :cond_153

    .line 25
    packed-switch v0, :pswitch_data_154

    .line 77
    :cond_14
    :goto_14
    :pswitch_14
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_e

    .line 27
    :pswitch_19
    new-instance v1, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .end local v1    # "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-direct {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;-><init>()V

    .line 28
    .restart local v1    # "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    goto :goto_14

    .line 31
    :pswitch_1f
    const-string v4, "type"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_73

    .line 32
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 33
    .local v2, "type":Ljava/lang/String;
    const-string v4, "sys"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 34
    sget-object v4, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FULL:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v4}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setType(I)V

    goto :goto_14

    .line 35
    :cond_45
    const-string v4, "patch"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_57

    .line 36
    sget-object v4, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->PATCH:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    .line 37
    invoke-virtual {v4}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v4

    .line 36
    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setType(I)V

    goto :goto_14

    .line 38
    :cond_57
    const-string v4, "factory"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_69

    .line 39
    sget-object v4, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FACTORY:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    .line 40
    invoke-virtual {v4}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v4

    .line 39
    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setType(I)V

    goto :goto_14

    .line 42
    :cond_69
    sget-object v4, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->NA:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    .line 43
    invoke-virtual {v4}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v4

    .line 42
    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setType(I)V

    goto :goto_14

    .line 45
    .end local v2    # "type":Ljava/lang/String;
    :cond_73
    const-string v4, "project"

    .line 46
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 47
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setProject(Ljava/lang/String;)V

    goto :goto_14

    .line 48
    :cond_8b
    const-string v4, "vendor"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a4

    .line 49
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setVendor(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 50
    :cond_a4
    const-string v4, "fileName"

    .line 51
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 50
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_bd

    .line 52
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setFileName(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 53
    :cond_bd
    const-string v4, "systemVersionName"

    .line 54
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d6

    .line 55
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setVersionName(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 56
    :cond_d6
    const-string v4, "isfull"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ef

    .line 57
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setIsfull(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 58
    :cond_ef
    const-string v4, "dependencyVersionCode"

    .line 59
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_108

    .line 60
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setDependencyVersionCode(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 61
    :cond_108
    const-string v4, "systemVersionCode"

    .line 62
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 61
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 63
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setVersionCode(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 64
    :cond_121
    const-string v4, "systemVersionDescription"

    .line 65
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    .line 64
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_13a

    .line 66
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setVersionDescription(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 67
    :cond_13a
    const-string v4, "ext"

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 68
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setExt(Ljava/lang/String;)V

    goto/16 :goto_14

    .line 79
    :cond_153
    return-object v1

    .line 25
    :pswitch_data_154
    .packed-switch 0x0
        :pswitch_19
        :pswitch_14
        :pswitch_1f
    .end packed-switch
.end method
