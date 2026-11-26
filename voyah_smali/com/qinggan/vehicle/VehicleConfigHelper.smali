.class public Lcom/qinggan/vehicle/VehicleConfigHelper;
.super Ljava/lang/Object;
.source "VehicleConfigHelper.java"


# static fields
.field private static final ACTION_CONFIG_CHANGE:Ljava/lang/String; = "android.intent.action.VEHICLE_CONFIG_CHANGE"

.field public static final ELECTRIC_VEHICLE_TYPE:I = 0x1

.field public static final OIL_ELECTRIC_VEHICLE_TYPE:I = 0x4

.field public static final OIL_VEHICLE_TYPE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "VehicleConfigHelper"

.field private static mConfigDatas:[I

.field private static final mVehicleConfigCacheMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/qinggan/vehicle/VehicleOnlineState;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sVehicleID:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    const/4 v0, 0x0

    sput v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->sVehicleID:I

    .line 45
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mConfigDatas:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 14
    .param p0, "configPath"    # Ljava/lang/String;

    .prologue
    .line 2126
    const/4 v7, 0x0

    .line 2127
    .local v7, "ips":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 2128
    .local v9, "ipsr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 2129
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 2130
    .local v2, "data":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2131
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_19

    .line 2132
    const-string v11, "VehicleConfigHelper"

    const-string v12, "file not exists"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v2

    .end local v2    # "data":Ljava/lang/String;
    .local v3, "data":Ljava/lang/String;
    move-object v4, v2

    .line 2148
    .end local v3    # "data":Ljava/lang/String;
    .local v4, "data":Ljava/lang/String;
    :goto_18
    return-object v4

    .line 2136
    .end local v4    # "data":Ljava/lang/String;
    .restart local v2    # "data":Ljava/lang/String;
    :cond_19
    :try_start_19
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1e
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_1e} :catch_3b
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1e} :catch_40

    .line 2137
    .end local v7    # "ips":Ljava/io/InputStream;
    .local v8, "ips":Ljava/io/InputStream;
    :try_start_1e
    new-instance v10, Ljava/io/InputStreamReader;

    invoke-direct {v10, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_23
    .catch Ljava/io/FileNotFoundException; {:try_start_1e .. :try_end_23} :catch_51
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_45

    .line 2138
    .end local v9    # "ipsr":Ljava/io/InputStreamReader;
    .local v10, "ipsr":Ljava/io/InputStreamReader;
    :try_start_23
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_23 .. :try_end_28} :catch_54
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_28} :catch_48

    .line 2139
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :try_start_28
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 2140
    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    .line 2141
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    .line 2142
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_35
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_35} :catch_58
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_35} :catch_4c

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v9    # "ipsr":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ips":Ljava/io/InputStream;
    :goto_38
    move-object v3, v2

    .end local v2    # "data":Ljava/lang/String;
    .restart local v3    # "data":Ljava/lang/String;
    move-object v4, v2

    .line 2148
    .end local v3    # "data":Ljava/lang/String;
    .restart local v4    # "data":Ljava/lang/String;
    goto :goto_18

    .line 2143
    .end local v4    # "data":Ljava/lang/String;
    .restart local v2    # "data":Ljava/lang/String;
    :catch_3b
    move-exception v5

    .line 2144
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_3c
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_38

    .line 2145
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_40
    move-exception v5

    .line 2146
    .local v5, "e":Ljava/io/IOException;
    :goto_41
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    .line 2145
    .end local v5    # "e":Ljava/io/IOException;
    .end local v7    # "ips":Ljava/io/InputStream;
    .restart local v8    # "ips":Ljava/io/InputStream;
    :catch_45
    move-exception v5

    move-object v7, v8

    .end local v8    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ips":Ljava/io/InputStream;
    goto :goto_41

    .end local v7    # "ips":Ljava/io/InputStream;
    .end local v9    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v8    # "ips":Ljava/io/InputStream;
    .restart local v10    # "ipsr":Ljava/io/InputStreamReader;
    :catch_48
    move-exception v5

    move-object v9, v10

    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v9    # "ipsr":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ips":Ljava/io/InputStream;
    goto :goto_41

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v7    # "ips":Ljava/io/InputStream;
    .end local v9    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "ips":Ljava/io/InputStream;
    .restart local v10    # "ipsr":Ljava/io/InputStreamReader;
    :catch_4c
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v9    # "ipsr":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ips":Ljava/io/InputStream;
    goto :goto_41

    .line 2143
    .end local v7    # "ips":Ljava/io/InputStream;
    .restart local v8    # "ips":Ljava/io/InputStream;
    :catch_51
    move-exception v5

    move-object v7, v8

    .end local v8    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ips":Ljava/io/InputStream;
    goto :goto_3c

    .end local v7    # "ips":Ljava/io/InputStream;
    .end local v9    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v8    # "ips":Ljava/io/InputStream;
    .restart local v10    # "ipsr":Ljava/io/InputStreamReader;
    :catch_54
    move-exception v5

    move-object v9, v10

    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v9    # "ipsr":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ips":Ljava/io/InputStream;
    goto :goto_3c

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v7    # "ips":Ljava/io/InputStream;
    .end local v9    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v8    # "ips":Ljava/io/InputStream;
    .restart local v10    # "ipsr":Ljava/io/InputStreamReader;
    :catch_58
    move-exception v5

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v9, v10

    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v9    # "ipsr":Ljava/io/InputStreamReader;
    move-object v7, v8

    .end local v8    # "ips":Ljava/io/InputStream;
    .restart local v7    # "ips":Ljava/io/InputStream;
    goto :goto_3c
.end method

.method private static getConfigArr(Ljava/lang/String;)[I
    .registers 21
    .param p0, "configPath"    # Ljava/lang/String;

    .prologue
    .line 2182
    const/4 v8, 0x0

    .line 2183
    .local v8, "ips":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 2184
    .local v10, "ipsr":Ljava/io/InputStreamReader;
    const/4 v1, 0x0

    .line 2185
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 2187
    .local v4, "data":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2188
    .local v6, "file":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_1a

    .line 2189
    const-string v15, "VehicleConfigHelper"

    const-string v16, "file not exists"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    const/4 v3, 0x0

    .line 2221
    :goto_19
    return-object v3

    .line 2193
    :cond_1a
    :try_start_1a
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1a .. :try_end_1f} :catch_4f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_54

    .line 2194
    .end local v8    # "ips":Ljava/io/InputStream;
    .local v9, "ips":Ljava/io/InputStream;
    :try_start_1f
    new-instance v11, Ljava/io/InputStreamReader;

    invoke-direct {v11, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_24} :catch_ed
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_24} :catch_de

    .line 2195
    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .local v11, "ipsr":Ljava/io/InputStreamReader;
    :try_start_24
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_29
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_29} :catch_f1
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_29} :catch_e2

    .line 2196
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_29
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 2197
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V

    .line 2198
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V

    .line 2199
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_36} :catch_f6
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_36} :catch_e7

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v10    # "ipsr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .line 2205
    .end local v9    # "ips":Ljava/io/InputStream;
    .restart local v8    # "ips":Ljava/io/InputStream;
    :goto_39
    const-string v15, ":"

    invoke-virtual {v4, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 2206
    .local v12, "rawData":[Ljava/lang/String;
    array-length v15, v12

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ge v15, v0, :cond_59

    .line 2207
    const-string v15, "VehicleConfigHelper"

    const-string v16, "vehicle type config invalid data"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    const/4 v3, 0x0

    goto :goto_19

    .line 2200
    .end local v12    # "rawData":[Ljava/lang/String;
    :catch_4f
    move-exception v5

    .line 2201
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_50
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_39

    .line 2202
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_54
    move-exception v5

    .line 2203
    .local v5, "e":Ljava/io/IOException;
    :goto_55
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39

    .line 2210
    .end local v5    # "e":Ljava/io/IOException;
    .restart local v12    # "rawData":[Ljava/lang/String;
    :cond_59
    const/4 v15, 0x1

    aget-object v15, v12, v15

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    .line 2211
    .local v14, "tmpStrs":[Ljava/lang/String;
    array-length v15, v14

    new-array v3, v15, [I

    .line 2212
    .local v3, "buffer":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_66
    array-length v15, v14

    if-ge v7, v15, :cond_78

    .line 2213
    aget-object v15, v14, v7

    invoke-static {v15}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    aput v15, v3, v7

    .line 2212
    add-int/lit8 v7, v7, 0x1

    goto :goto_66

    .line 2215
    :cond_78
    new-instance v13, Ljava/lang/String;

    const-string v15, "["

    invoke-direct {v13, v15}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 2216
    .local v13, "st":Ljava/lang/String;
    const/4 v7, 0x0

    :goto_80
    array-length v15, v3

    if-ge v7, v15, :cond_af

    .line 2217
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "%02x "

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aget v19, v3, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    aput-object v19, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2216
    add-int/lit8 v7, v7, 0x1

    goto :goto_80

    .line 2219
    :cond_af
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 2220
    const-string v15, "VehicleConfigHelper"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "data:"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 2202
    .end local v3    # "buffer":[I
    .end local v7    # "i":I
    .end local v8    # "ips":Ljava/io/InputStream;
    .end local v12    # "rawData":[Ljava/lang/String;
    .end local v13    # "st":Ljava/lang/String;
    .end local v14    # "tmpStrs":[Ljava/lang/String;
    .restart local v9    # "ips":Ljava/io/InputStream;
    :catch_de
    move-exception v5

    move-object v8, v9

    .end local v9    # "ips":Ljava/io/InputStream;
    .restart local v8    # "ips":Ljava/io/InputStream;
    goto/16 :goto_55

    .end local v8    # "ips":Ljava/io/InputStream;
    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v9    # "ips":Ljava/io/InputStream;
    .restart local v11    # "ipsr":Ljava/io/InputStreamReader;
    :catch_e2
    move-exception v5

    move-object v10, v11

    .end local v11    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v10    # "ipsr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "ips":Ljava/io/InputStream;
    .restart local v8    # "ips":Ljava/io/InputStream;
    goto/16 :goto_55

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v8    # "ips":Ljava/io/InputStream;
    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "ips":Ljava/io/InputStream;
    .restart local v11    # "ipsr":Ljava/io/InputStreamReader;
    :catch_e7
    move-exception v5

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v10    # "ipsr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "ips":Ljava/io/InputStream;
    .restart local v8    # "ips":Ljava/io/InputStream;
    goto/16 :goto_55

    .line 2200
    .end local v8    # "ips":Ljava/io/InputStream;
    .restart local v9    # "ips":Ljava/io/InputStream;
    :catch_ed
    move-exception v5

    move-object v8, v9

    .end local v9    # "ips":Ljava/io/InputStream;
    .restart local v8    # "ips":Ljava/io/InputStream;
    goto/16 :goto_50

    .end local v8    # "ips":Ljava/io/InputStream;
    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v9    # "ips":Ljava/io/InputStream;
    .restart local v11    # "ipsr":Ljava/io/InputStreamReader;
    :catch_f1
    move-exception v5

    move-object v10, v11

    .end local v11    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v10    # "ipsr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "ips":Ljava/io/InputStream;
    .restart local v8    # "ips":Ljava/io/InputStream;
    goto/16 :goto_50

    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v8    # "ips":Ljava/io/InputStream;
    .end local v10    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "ips":Ljava/io/InputStream;
    .restart local v11    # "ipsr":Ljava/io/InputStreamReader;
    :catch_f6
    move-exception v5

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    move-object v10, v11

    .end local v11    # "ipsr":Ljava/io/InputStreamReader;
    .restart local v10    # "ipsr":Ljava/io/InputStreamReader;
    move-object v8, v9

    .end local v9    # "ips":Ljava/io/InputStream;
    .restart local v8    # "ips":Ljava/io/InputStream;
    goto/16 :goto_50
.end method

.method private static getConfigDatas()[I
    .registers 1

    .prologue
    .line 110
    sget-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mConfigDatas:[I

    if-eqz v0, :cond_7

    .line 111
    sget-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mConfigDatas:[I

    .line 114
    :goto_6
    return-object v0

    .line 113
    :cond_7
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeSUB()[I

    move-result-object v0

    sput-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mConfigDatas:[I

    .line 114
    sget-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mConfigDatas:[I

    goto :goto_6
.end method

.method private static getDatas([[I)[I
    .registers 7
    .param p0, "arr"    # [[I

    .prologue
    .line 2024
    const/16 v2, 0xa

    new-array v1, v2, [I

    .line 2025
    .local v1, "val":[I
    const/4 v0, 0x0

    .local v0, "m":I
    :goto_5
    array-length v2, p0

    if-ge v0, v2, :cond_1d

    .line 2026
    aget-object v2, p0, v0

    const/4 v3, 0x0

    aget v2, v2, v3

    aget-object v3, p0, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    aget-object v4, p0, v0

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-static {v1, v2, v3, v4}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 2025
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 2028
    :cond_1d
    return-object v1
.end method

.method private static getValue([III)I
    .registers 10
    .param p0, "rawData"    # [I
    .param p1, "startBit"    # I
    .param p2, "length"    # I

    .prologue
    .line 2226
    const/16 v5, 0x8

    new-array v1, v5, [I

    fill-array-data v1, :array_28

    .line 2227
    .local v1, "masks":[I
    div-int/lit8 v0, p1, 0x8

    .line 2228
    .local v0, "index":I
    add-int v5, p1, p2

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v3, v5, 0x8

    .line 2229
    .local v3, "tmp":I
    if-eq v3, v0, :cond_1a

    .line 2230
    const-string v5, "VehicleConfigHelper"

    const-string v6, "ERR! only support all bits are in one byte !!!!!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2231
    const/4 v5, -0x1

    .line 2235
    :goto_19
    return v5

    .line 2233
    :cond_1a
    rem-int/lit8 v2, p1, 0x8

    .line 2234
    .local v2, "offset":I
    aget v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 2235
    .local v4, "value":I
    shr-int v5, v4, v2

    add-int/lit8 v6, p2, -0x1

    aget v6, v1, v6

    and-int/2addr v5, v6

    goto :goto_19

    .line 2226
    :array_28
    .array-data 4
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data
.end method

.method private static getVehicleConfig([I)Ljava/lang/String;
    .registers 7
    .param p0, "data"    # [I

    .prologue
    .line 2269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2270
    .local v0, "builder":Ljava/lang/StringBuilder;
    array-length v3, p0

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v3, :cond_36

    aget v1, p0, v2

    .line 2271
    .local v1, "i":I
    and-int/lit16 v1, v1, 0xff

    .line 2272
    const/16 v4, 0xa

    if-lt v1, v4, :cond_1b

    .line 2273
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2270
    :goto_18
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 2275
    :cond_1b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_18

    .line 2278
    .end local v1    # "i":I
    :cond_36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getVehicleType()I
    .registers 3

    .prologue
    .line 101
    const/4 v0, 0x2

    .line 102
    .local v0, "vehicleType":I
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v1

    .line 103
    .local v1, "vehicleTypeID":I
    const/16 v2, 0x24

    if-eq v1, v2, :cond_d

    const/16 v2, 0x27

    if-ne v0, v2, :cond_e

    .line 104
    :cond_d
    const/4 v0, 0x1

    .line 106
    :cond_e
    return v0
.end method

.method public static getVehicleTypeID()I
    .registers 12

    .prologue
    const/16 v11, 0x86

    const/16 v10, 0x8f

    .line 57
    sget v7, Lcom/qinggan/vehicle/VehicleConfigHelper;->sVehicleID:I

    if-eqz v7, :cond_b

    .line 58
    sget v7, Lcom/qinggan/vehicle/VehicleConfigHelper;->sVehicleID:I

    .line 90
    .local v0, "m":Ljava/util/regex/Matcher;
    .local v1, "p":Ljava/util/regex/Pattern;
    .local v4, "regEx":Ljava/lang/String;
    .local v6, "vehicleTypeIDString":Ljava/lang/String;
    :goto_a
    return v7

    .line 59
    .end local v0    # "m":Ljava/util/regex/Matcher;
    .end local v1    # "p":Ljava/util/regex/Pattern;
    .end local v4    # "regEx":Ljava/lang/String;
    .end local v6    # "vehicleTypeIDString":Ljava/lang/String;
    :cond_b
    const/16 v7, 0x2b

    invoke-static {v7}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v6

    .line 60
    .restart local v6    # "vehicleTypeIDString":Ljava/lang/String;
    const-string v7, "VehicleConfigHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVehicleTypeID lyh11 vehicleTypeIDString= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const-string v4, "[^0-9]"

    .line 62
    .restart local v4    # "regEx":Ljava/lang/String;
    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 63
    .restart local v1    # "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 64
    .restart local v0    # "m":Ljava/util/regex/Matcher;
    const-string v7, ""

    invoke-virtual {v0, v7}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 66
    const-string v7, "VehicleConfigHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVehicleTypeID lyh vehicleTypeIDString= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    .line 68
    const/4 v7, 0x0

    goto :goto_a

    .line 70
    :cond_5f
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 71
    .local v5, "vehicleTypeID":I
    const-string v7, "ro.build.product"

    invoke-static {v7}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 72
    .local v3, "product_name":Ljava/lang/String;
    const-string v7, "ro.build.product_3rdparty"

    invoke-static {v7}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 73
    .local v2, "product_3rdparty":Ljava/lang/String;
    const-string v7, "VehicleConfigHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVehicleTypeID  vehicleTypeID = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", product_name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", product_3rdparty = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-ne v5, v11, :cond_af

    const-string v7, "f6805h"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_ad

    const-string v7, "f6805h"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_af

    .line 75
    :cond_ad
    const/16 v5, 0x3459

    .line 77
    :cond_af
    if-ne v5, v11, :cond_c3

    const-string v7, "f6811"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_c1

    const-string v7, "f6811"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c3

    .line 78
    :cond_c1
    const/16 v5, 0x345a

    .line 80
    :cond_c3
    if-ne v5, v10, :cond_d7

    const-string v7, "f6806"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d5

    const-string v7, "f6806"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d7

    .line 81
    :cond_d5
    const/16 v5, 0x37dd

    .line 83
    :cond_d7
    if-ne v5, v10, :cond_eb

    const-string v7, "f6809"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e9

    const-string v7, "f6809"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_eb

    .line 84
    :cond_e9
    const/16 v5, 0x37df

    .line 86
    :cond_eb
    if-ne v5, v10, :cond_ff

    const-string v7, "f6810"

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_fd

    const-string v7, "f6810"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_ff

    .line 87
    :cond_fd
    const/16 v5, 0x37de

    .line 89
    :cond_ff
    sput v5, Lcom/qinggan/vehicle/VehicleConfigHelper;->sVehicleID:I

    .line 90
    sget v7, Lcom/qinggan/vehicle/VehicleConfigHelper;->sVehicleID:I

    goto/16 :goto_a
.end method

.method public static getVehicleTypeSUB()[I
    .registers 7

    .prologue
    const/16 v6, 0xc

    .line 2152
    const/16 v3, 0x33

    invoke-static {v3}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v2

    .line 2153
    .local v2, "str":Ljava/lang/String;
    const-string v3, "VehicleConfigHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVehicleTypeSUB data:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2154
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v3, v6, :cond_2f

    .line 2155
    const-string v3, "VehicleConfigHelper"

    const-string v4, "vehicle type config invalid data"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2156
    const/4 v0, 0x0

    .line 2178
    :goto_2e
    return-object v0

    .line 2158
    :cond_2f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    new-array v0, v3, [I

    .line 2160
    .local v0, "buffer":[I
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    :try_start_38
    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2161
    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2162
    const/4 v3, 0x2

    const/4 v4, 0x4

    const/4 v5, 0x6

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2163
    const/4 v3, 0x3

    const/4 v4, 0x6

    const/16 v5, 0x8

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2164
    const/4 v3, 0x4

    const/16 v4, 0x8

    const/16 v5, 0xa

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2165
    const/4 v3, 0x5

    const/16 v4, 0xa

    const/16 v5, 0xc

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2166
    const/4 v3, 0x6

    const/16 v4, 0xc

    const/16 v5, 0xe

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2167
    const/4 v3, 0x7

    const/16 v4, 0xe

    const/16 v5, 0x10

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2168
    const/16 v3, 0x8

    const/16 v4, 0x10

    const/16 v5, 0x12

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2169
    const/16 v3, 0x9

    const/16 v4, 0x12

    const/16 v5, 0x14

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2170
    const/16 v3, 0xa

    const/16 v4, 0x14

    const/16 v5, 0x16

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2171
    const/16 v3, 0xb

    const/16 v4, 0x16

    const/16 v5, 0x18

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2172
    const/16 v3, 0xc

    const/16 v4, 0x18

    const/16 v5, 0x1a

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3

    .line 2173
    const/16 v3, 0xd

    const/16 v4, 0x1a

    const/16 v5, 0x1c

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    aput v4, v0, v3
    :try_end_122
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_122} :catch_124

    goto/16 :goto_2e

    .line 2174
    :catch_124
    move-exception v1

    .line 2175
    .local v1, "e":Ljava/lang/Throwable;
    const-string v3, "VehicleConfigHelper"

    const-string v4, "getVehicleTypeSUB data exception"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2e
.end method

.method private static isTboxDevice()Z
    .registers 4

    .prologue
    .line 2282
    const/4 v0, 0x0

    .line 2283
    .local v0, "ret":Z
    invoke-static {}, Lcom/qinggan/os/SystemProperties;->getProductSN()Ljava/lang/String;

    move-result-object v1

    .line 2284
    .local v1, "str":Ljava/lang/String;
    const/4 v2, 0x6

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 2285
    const-string v2, "09"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 2286
    const/4 v0, 0x1

    .line 2288
    :cond_15
    return v0
.end method

.method private static readConfig(Lcom/qinggan/vehicle/VehicleOnlineState;)I
    .registers 6
    .param p0, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;

    .prologue
    const/4 v1, -0x1

    .line 128
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 129
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 214
    :cond_15
    :goto_15
    return v1

    .line 134
    :cond_16
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v2

    sparse-switch v2, :sswitch_data_164

    .line 211
    const-string v2, "VehicleConfigHelper"

    const-string v3, "readConfig not support this CarType"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    .line 136
    :sswitch_25
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setDongFengConfigToCache([I)V

    .line 137
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 138
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_15

    .line 142
    :sswitch_41
    const-string v2, "VehicleConfigHelper"

    const-string v3, "read config from changcheng"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setChangChengConfigToCache([I)V

    .line 144
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 145
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_15

    .line 151
    :sswitch_64
    :try_start_64
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setBAICConfigToCache([I)V
    :try_end_6b
    .catch Ljava/lang/Exception; {:try_start_64 .. :try_end_6b} :catch_80

    .line 155
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 156
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_15

    .line 152
    :catch_80
    move-exception v0

    .line 153
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_15

    .line 163
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_82
    :try_start_82
    const-string v2, "VehicleConfigHelper"

    const-string v3, "H97 read config from NVRAM to cache"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setH97ConfigToCache([I)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_82 .. :try_end_90} :catch_a6

    .line 170
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b3

    .line 171
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_15

    .line 165
    :catch_a6
    move-exception v0

    .line 166
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "VehicleConfigHelper"

    const-string v3, "setH97ConfigToCache error, return -1."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    .line 173
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_b3
    const-string v2, "VehicleConfigHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVehicleConfigCacheMap not contains Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 179
    :sswitch_cd
    :try_start_cd
    const-string v2, "VehicleConfigHelper"

    const-string v3, "H97C read config from NVRAM to cache"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setH97CConfigToCache([I)V
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_cd .. :try_end_db} :catch_f1

    .line 186
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_fe

    .line 187
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_15

    .line 181
    :catch_f1
    move-exception v0

    .line 182
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "VehicleConfigHelper"

    const-string v3, "setH97CConfigToCache error, return -1."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_fe
    const-string v2, "VehicleConfigHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVehicleConfigCacheMap not contains Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 198
    :sswitch_118
    :try_start_118
    const-string v2, "VehicleConfigHelper"

    const-string v3, "H56 read config from NVRAM to cache"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setH56ConfigToCache([I)V
    :try_end_126
    .catch Ljava/lang/Exception; {:try_start_118 .. :try_end_126} :catch_13c

    .line 205
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_149

    .line 206
    sget-object v2, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto/16 :goto_15

    .line 200
    :catch_13c
    move-exception v0

    .line 201
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v2, "VehicleConfigHelper"

    const-string v3, "setH56ConfigToCache error, return -1."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    .line 208
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_149
    const-string v2, "VehicleConfigHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mVehicleConfigCacheMap not contains Key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    .line 134
    nop

    :sswitch_data_164
    .sparse-switch
        0x25 -> :sswitch_64
        0x28 -> :sswitch_25
        0x2e -> :sswitch_64
        0x30 -> :sswitch_41
        0x4e -> :sswitch_82
        0x65 -> :sswitch_118
        0x6f -> :sswitch_82
        0x83 -> :sswitch_82
        0x86 -> :sswitch_cd
        0x89 -> :sswitch_118
        0x8f -> :sswitch_118
        0x3459 -> :sswitch_cd
        0x345a -> :sswitch_cd
        0x37dd -> :sswitch_118
        0x37de -> :sswitch_118
        0x37df -> :sswitch_118
    .end sparse-switch
.end method

.method public static readOnlineConfigItem(Lcom/qinggan/vehicle/VehicleOnlineState;)I
    .registers 2
    .param p0, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;

    .prologue
    .line 124
    invoke-static {p0}, Lcom/qinggan/vehicle/VehicleConfigHelper;->readConfig(Lcom/qinggan/vehicle/VehicleOnlineState;)I

    move-result v0

    return v0
.end method

.method private static saveBAICConfig(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I
    .registers 11
    .param p0, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;
    .param p1, "value"    # I
    .param p2, "configPath"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x1c

    const/4 v6, 0x4

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1932
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    .line 1933
    .local v0, "configbuf":[I
    sget-object v1, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1934
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->ENGINE_START_STOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1f

    .line 1935
    invoke-static {v0, v5, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 2020
    :goto_1a
    invoke-static {v0, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v1

    :goto_1e
    return v1

    .line 1936
    :cond_1f
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->REAR_CAMERA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_27

    .line 1937
    invoke-static {v0, v3, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1938
    :cond_27
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AVM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_2f

    .line 1939
    invoke-static {v0, v4, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1940
    :cond_2f
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->DRL:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_38

    .line 1941
    const/4 v1, 0x3

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1942
    :cond_38
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_40

    .line 1943
    invoke-static {v0, v6, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1944
    :cond_40
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_49

    .line 1945
    const/4 v1, 0x5

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1946
    :cond_49
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->RADAR_CONFIGURE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_52

    .line 1947
    const/4 v1, 0x6

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1948
    :cond_52
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->TCU:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_5c

    .line 1949
    const/16 v1, 0x8

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1950
    :cond_5c
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->GNITION_OFF_UNLOCK_CONFIGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_66

    .line 1951
    const/16 v1, 0xa

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1952
    :cond_66
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->DVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_70

    .line 1953
    const/16 v1, 0xb

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1954
    :cond_70
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_7a

    .line 1955
    const/16 v1, 0xc

    invoke-static {v0, v1, v6, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1956
    :cond_7a
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->LANGUAGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_84

    .line 1957
    const/16 v1, 0x10

    invoke-static {v0, v1, v6, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1958
    :cond_84
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->RADIO_FRE_SCOPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_8e

    .line 1959
    const/16 v1, 0x14

    invoke-static {v0, v1, v6, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1960
    :cond_8e
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_CLEANER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_98

    .line 1961
    const/16 v1, 0x18

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1a

    .line 1962
    :cond_98
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->MRR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_a3

    .line 1963
    const/16 v1, 0x19

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1964
    :cond_a3
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->MPC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_ae

    .line 1965
    const/16 v1, 0x1a

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1966
    :cond_ae
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->FSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_b9

    .line 1967
    const/16 v1, 0x1b

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1968
    :cond_b9
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_df

    .line 1969
    if-ne p1, v4, :cond_c9

    .line 1970
    invoke-static {v0, v7, v3, v5}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1971
    const/16 v1, 0x1d

    invoke-static {v0, v1, v3, v3}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1972
    :cond_c9
    if-ne p1, v3, :cond_d5

    .line 1973
    invoke-static {v0, v7, v3, v3}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1974
    const/16 v1, 0x1d

    invoke-static {v0, v1, v3, v5}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1976
    :cond_d5
    invoke-static {v0, v7, v3, v5}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1977
    const/16 v1, 0x1d

    invoke-static {v0, v1, v3, v5}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1979
    :cond_df
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP_SMART_MODE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_ea

    .line 1980
    const/16 v1, 0x1e

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1981
    :cond_ea
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->CEREMONY_LIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_f5

    .line 1982
    const/16 v1, 0x1f

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1983
    :cond_f5
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->iCM_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_100

    .line 1984
    const/16 v1, 0x20

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1985
    :cond_100
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->TCU_DRIVING_MODE_SETTING:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_10b

    .line 1986
    const/16 v1, 0x22

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1987
    :cond_10b
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->WIRELESS_CHARGING_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_116

    .line 1988
    const/16 v1, 0x23

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1989
    :cond_116
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->CENTER_CONTROL_PANAL_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_121

    .line 1990
    const/16 v1, 0x24

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1991
    :cond_121
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->POWER_TAIL_GATE_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_12c

    .line 1992
    const/16 v1, 0x25

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1993
    :cond_12c
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->NEVER_BREAK_DOWN_SYSTEM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_137

    .line 1994
    const/16 v1, 0x26

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1995
    :cond_137
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->RVM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_142

    .line 1996
    const/16 v1, 0x27

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1997
    :cond_142
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->APA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_14d

    .line 1998
    const/16 v1, 0x28

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 1999
    :cond_14d
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_158

    .line 2000
    const/16 v1, 0x29

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 2001
    :cond_158
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->ARKAMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_163

    .line 2002
    const/16 v1, 0x2b

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 2003
    :cond_163
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->RAIN_CLOSEWINDOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_16e

    .line 2004
    const/16 v1, 0x2c

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 2005
    :cond_16e
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->LOCK_CLOSEWINDOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_179

    .line 2006
    const/16 v1, 0x2d

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 2007
    :cond_179
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->THREE_SCREEN:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_184

    .line 2008
    const/16 v1, 0x2e

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 2009
    :cond_184
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->FACE_RECOGNITION:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_18f

    .line 2010
    const/16 v1, 0x30

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 2011
    :cond_18f
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AR_NAVI:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_19a

    .line 2012
    const/16 v1, 0x31

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 2013
    :cond_19a
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->STREAM_MEDIA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1a5

    .line 2014
    const/16 v1, 0x32

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 2015
    :cond_1a5
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->DSM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1b0

    .line 2016
    const/16 v1, 0x33

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1a

    .line 2018
    :cond_1b0
    const/4 v1, -0x1

    goto/16 :goto_1e
.end method

.method private static saveChangChengConfig(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I
    .registers 11
    .param p0, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;
    .param p1, "value"    # I
    .param p2, "configPath"    # Ljava/lang/String;

    .prologue
    const/16 v7, 0x11

    const/4 v6, 0x0

    const/4 v5, 0x4

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1360
    const-string v1, "VehicleConfigHelper"

    const-string v2, "saveChangChengConfig"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    sget-object v1, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->TRANSMISSION_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_4f

    .line 1363
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0xc

    invoke-static {v1, v2, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1435
    :cond_23
    :goto_23
    const/4 v0, 0x0

    .local v0, "k":I
    :goto_24
    if-ge v0, v7, :cond_255

    .line 1436
    const-string v1, "VehicleConfigHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n saveChangChengConfig mConfigDatas:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/qinggan/vehicle/VehicleConfigHelper;->mConfigDatas:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " k="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    add-int/lit8 v0, v0, 0x1

    goto :goto_24

    .line 1364
    .end local v0    # "k":I
    :cond_4f
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->WARD_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_5d

    .line 1365
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_23

    .line 1366
    :cond_5d
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->ENGINE_START_STOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_6b

    .line 1367
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x14

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_23

    .line 1368
    :cond_6b
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->ALS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_77

    .line 1369
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    invoke-static {v1, v7, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_23

    .line 1370
    :cond_77
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->CAR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_85

    .line 1371
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x1c

    invoke-static {v1, v2, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_23

    .line 1372
    :cond_85
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET1:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_93

    .line 1373
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x2e

    invoke-static {v1, v2, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_23

    .line 1374
    :cond_93
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->TRAILER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_a1

    .line 1375
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x2c

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_23

    .line 1376
    :cond_a1
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_b0

    .line 1377
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x28

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1378
    :cond_b0
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->VSG:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_bf

    .line 1379
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x31

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1380
    :cond_bf
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->FOLLOW_ME:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_ce

    .line 1381
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x3d

    invoke-static {v1, v2, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1382
    :cond_ce
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_dd

    .line 1383
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x3b

    invoke-static {v1, v2, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1384
    :cond_dd
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_ec

    .line 1385
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x43

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1386
    :cond_ec
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->CHAIR_MEMORY_FUN:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_fb

    .line 1387
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x41

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1388
    :cond_fb
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->DSM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_10a

    .line 1389
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x4f

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1390
    :cond_10a
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_119

    .line 1391
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x4d

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1392
    :cond_119
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->IP_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_128

    .line 1393
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x4b

    invoke-static {v1, v2, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1394
    :cond_128
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET2:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_138

    .line 1395
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x48

    const/4 v3, 0x3

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1396
    :cond_138
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->DOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_147

    .line 1397
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x57

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1398
    :cond_147
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->PEPS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_156

    .line 1399
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x53

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1400
    :cond_156
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->OUT_MIRROR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_165

    .line 1401
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x51

    invoke-static {v1, v2, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1402
    :cond_165
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->VOICE_REQUSET_FUN:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_174

    .line 1403
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x67

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1404
    :cond_174
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->HMI:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_183

    .line 1405
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x63

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1406
    :cond_183
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->DDCM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_192

    .line 1407
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x62

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1408
    :cond_192
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AFS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1a1

    .line 1409
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x6d

    invoke-static {v1, v2, v6, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1410
    :cond_1a1
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1b0

    .line 1411
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x6a

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1412
    :cond_1b0
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->TPMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1bf

    .line 1413
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x68

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1414
    :cond_1bf
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->AQS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1ce

    .line 1415
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x77

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1416
    :cond_1ce
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->DDD:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1dd

    .line 1417
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x76

    invoke-static {v1, v2, v6, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1418
    :cond_1dd
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->PARK_ASSIST:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1ec

    .line 1419
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x70

    invoke-static {v1, v2, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1420
    :cond_1ec
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->CAMERA_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_1fb

    .line 1421
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x7e

    invoke-static {v1, v2, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1422
    :cond_1fb
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->GPS_NAVI:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_20a

    .line 1423
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x7d

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1424
    :cond_20a
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->FSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_219

    .line 1425
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x7a

    invoke-static {v1, v2, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1426
    :cond_219
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_228

    .line 1427
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x79

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1428
    :cond_228
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_237

    .line 1429
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x87

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1430
    :cond_237
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->SEAT_VENTILATING:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_246

    .line 1431
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x86

    invoke-static {v1, v2, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1432
    :cond_246
    sget-object v1, Lcom/qinggan/vehicle/VehicleOnlineState;->RVI:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v1, :cond_23

    .line 1433
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    const/16 v2, 0x80

    invoke-static {v1, v2, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_23

    .line 1438
    .restart local v0    # "k":I
    :cond_255
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v1

    invoke-static {v1, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static saveDongFengConfig(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I
    .registers 9
    .param p0, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;
    .param p1, "value"    # I
    .param p2, "configPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1873
    sget-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1874
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PARK_ASSIST:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_22

    .line 1875
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/4 v1, 0x6

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1927
    :cond_19
    :goto_19
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v0

    :goto_21
    return v0

    .line 1876
    :cond_22
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AVM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2e

    .line 1877
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v5, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1878
    :cond_2e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->GENERAL_REVERSE_IMAGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3a

    .line 1879
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v4, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1880
    :cond_3a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_46

    .line 1881
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v3, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1882
    :cond_46
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CAR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_54

    .line 1883
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1884
    :cond_54
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_63

    .line 1885
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x3

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1886
    :cond_63
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY_CONFIG:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_71

    .line 1887
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1888
    :cond_71
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PDC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_7f

    .line 1889
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1890
    :cond_7f
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PM25:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_8d

    .line 1891
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1892
    :cond_8d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ACC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_9c

    .line 1893
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1894
    :cond_9c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FULL_LIQUID_CRYSTAL_IC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_ab

    .line 1895
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1c

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1896
    :cond_ab
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->POWER_TRUNK:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_ba

    .line 1897
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1d

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1898
    :cond_ba
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_c9

    .line 1899
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1900
    :cond_c9
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->BSD:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_d8

    .line 1901
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x21

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1902
    :cond_d8
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TIRE_PRESSURE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_e7

    .line 1903
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1904
    :cond_e7
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->VOICE_CONTROL_SEAT_HEATING:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_f6

    .line 1905
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1906
    :cond_f6
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->VOICE_SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_105

    .line 1907
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x25

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1908
    :cond_105
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_114

    .line 1909
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x26

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1910
    :cond_114
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->GEAR_CHANGE_TIPS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_123

    .line 1911
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1912
    :cond_123
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SLOW_MOVE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_132

    .line 1913
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2d

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1914
    :cond_132
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TRUNK_KICK:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_141

    .line 1915
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1916
    :cond_141
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RAIN_AUTO_WINDOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_150

    .line 1917
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1918
    :cond_150
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_LOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_160

    .line 1919
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;->CONFIG_DATAS_LOW:[[I

    invoke-static {v0}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getDatas([[I)[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_21

    .line 1920
    :cond_160
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_IN:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_170

    .line 1921
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;->CONFIG_DATAS_IN:[[I

    invoke-static {v0}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getDatas([[I)[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_21

    .line 1922
    :cond_170
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_HIGH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_180

    .line 1923
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;->CONFIG_DATAS_HIGH:[[I

    invoke-static {v0}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getDatas([[I)[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_21

    .line 1924
    :cond_180
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_PHEV:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_19

    .line 1925
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;->CONFIG_DATAS_PHEV:[[I

    invoke-static {v0}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getDatas([[I)[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v0

    goto/16 :goto_21
.end method

.method private static saveH56Config(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I
    .registers 10
    .param p0, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;
    .param p1, "value"    # I
    .param p2, "configPath"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x65

    const/4 v2, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 1706
    sget-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1707
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TRANSMISSION_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_71

    .line 1708
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1849
    :cond_1b
    :goto_1b
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v0

    if-eq v0, v6, :cond_2e

    .line 1850
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->REAR_SEAT_WELCOME:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2e

    .line 1851
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1855
    :cond_2e
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v0

    const/16 v1, 0x8f

    if-eq v0, v1, :cond_3e

    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v0

    const/16 v1, 0x37df

    if-ne v0, v1, :cond_4b

    .line 1856
    :cond_3e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CAR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_4b

    .line 1857
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1861
    :cond_4b
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v0

    const/16 v1, 0x37dd

    if-eq v0, v1, :cond_5b

    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v0

    const/16 v1, 0x37de

    if-ne v0, v1, :cond_68

    .line 1862
    :cond_5b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CAR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_473

    .line 1863
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1869
    :cond_68
    :goto_68
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1709
    :cond_71
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_7d

    .line 1710
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v4, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1b

    .line 1711
    :cond_7d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEFORM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_89

    .line 1712
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v2, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1b

    .line 1713
    :cond_89
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->HEADUPDISPLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_96

    .line 1714
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_1b

    .line 1715
    :cond_96
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEPOWER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_a5

    .line 1716
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1717
    :cond_a5
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->WIRELESS_CHARGING_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_b4

    .line 1718
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1719
    :cond_b4
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DIMGLASSTOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_c3

    .line 1720
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1721
    :cond_c3
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_d2

    .line 1722
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1723
    :cond_d2
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CHILDLOCK:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_e1

    .line 1724
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1725
    :cond_e1
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_f0

    .line 1726
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1727
    :cond_f0
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_ff

    .line 1728
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1729
    :cond_ff
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_10e

    .line 1730
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1731
    :cond_10e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_11d

    .line 1732
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1733
    :cond_11d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_12c

    .line 1734
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1735
    :cond_12c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_13b

    .line 1736
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1737
    :cond_13b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_14a

    .line 1738
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1739
    :cond_14a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_159

    .line 1740
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1741
    :cond_159
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SEATNUMBER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_168

    .line 1742
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1c

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1743
    :cond_168
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_177

    .line 1744
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1745
    :cond_177
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CHARGEGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_186

    .line 1746
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1747
    :cond_186
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUELGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_195

    .line 1748
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1749
    :cond_195
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY_CONFIG:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1a4

    .line 1750
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1751
    :cond_1a4
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ASC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1b3

    .line 1752
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1753
    :cond_1b3
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CARCOLOR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1c2

    .line 1754
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1755
    :cond_1c2
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->REMAILMILE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1d1

    .line 1756
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1757
    :cond_1d1
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LIGHTCHANGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1e0

    .line 1758
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1759
    :cond_1e0
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ASFHTHIGHADJUST:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1ef

    .line 1760
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1761
    :cond_1ef
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1fe

    .line 1762
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1763
    :cond_1fe
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LEFRRIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_20d

    .line 1764
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1765
    :cond_20d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AFS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_21c

    .line 1766
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1767
    :cond_21c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MATRIXLIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_22b

    .line 1768
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1769
    :cond_22b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->APA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_23a

    .line 1770
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1771
    :cond_23a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ARNAVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_249

    .line 1772
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1773
    :cond_249
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FSOUNDLOCATION:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_258

    .line 1774
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1775
    :cond_258
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->IAQC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_267

    .line 1776
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3a

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1777
    :cond_267
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRFITLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_276

    .line 1778
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1779
    :cond_276
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_FCM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_285

    .line 1780
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1781
    :cond_285
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_294

    .line 1782
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1783
    :cond_294
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ETC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2a3

    .line 1784
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3e

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1785
    :cond_2a3
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRAUTOCYCLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2b2

    .line 1786
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1787
    :cond_2b2
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->NVS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2c1

    .line 1788
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1789
    :cond_2c1
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RPM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2d0

    .line 1790
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x41

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1791
    :cond_2d0
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->BSD:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2df

    .line 1792
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1793
    :cond_2df
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LDW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2ee

    .line 1794
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x43

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1795
    :cond_2ee
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2fd

    .line 1796
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x44

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1797
    :cond_2fd
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LKW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_30c

    .line 1798
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x46

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1799
    :cond_30c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LCA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_31b

    .line 1800
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x47

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1801
    :cond_31b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ACC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_32a

    .line 1802
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x48

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1803
    :cond_32a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_339

    .line 1804
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4a

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1805
    :cond_339
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_348

    .line 1806
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4b

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1807
    :cond_348
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ASR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_357

    .line 1808
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4c

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1809
    :cond_357
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ISA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_366

    .line 1810
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4d

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1811
    :cond_366
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RCTA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_375

    .line 1812
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4e

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1813
    :cond_375
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TJA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_384

    .line 1814
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4f

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1815
    :cond_384
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_393

    .line 1816
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1817
    :cond_393
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->GUESTID:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3a2

    .line 1818
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x51

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1819
    :cond_3a2
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET2:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3b2

    .line 1820
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x52

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1821
    :cond_3b2
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->THREE_SCREEN:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3c1

    .line 1822
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x58

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1823
    :cond_3c1
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MRR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3d0

    .line 1824
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x5a

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1825
    :cond_3d0
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MPC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3df

    .line 1826
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x5b

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1827
    :cond_3df
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ION:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3ee

    .line 1828
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x5c

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1829
    :cond_3ee
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ESA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3fd

    .line 1830
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x5d

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1831
    :cond_3fd
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ELK:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_40c

    .line 1832
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x5e

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1833
    :cond_40c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TLC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_41b

    .line 1834
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x5f

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1835
    :cond_41b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->WELCOME_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_42a

    .line 1836
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x60

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1837
    :cond_42a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_439

    .line 1838
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x61

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1839
    :cond_439
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_448

    .line 1840
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x62

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1841
    :cond_448
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_457

    .line 1842
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x63

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1843
    :cond_457
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RSR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_466

    .line 1844
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1845
    :cond_466
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SWC_HEAT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1b

    .line 1846
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v6, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_1b

    .line 1864
    :cond_473
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->GLASS_HEAT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_68

    .line 1865
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x6a

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_68
.end method

.method private static saveH97CConfig(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I
    .registers 9
    .param p0, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;
    .param p1, "value"    # I
    .param p2, "configPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1567
    sget-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1568
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TRANSMISSION_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_22

    .line 1569
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1702
    :cond_19
    :goto_19
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1570
    :cond_22
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2e

    .line 1571
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v3, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1572
    :cond_2e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEFORM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3a

    .line 1573
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v5, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1574
    :cond_3a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->HEADUPDISPLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_47

    .line 1575
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1576
    :cond_47
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEPOWER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_55

    .line 1577
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1578
    :cond_55
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->WIRELESS_CHARGING_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_63

    .line 1579
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1580
    :cond_63
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DIMGLASSTOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_71

    .line 1581
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1582
    :cond_71
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_7f

    .line 1583
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1584
    :cond_7f
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CHILDLOCK:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_8d

    .line 1585
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1586
    :cond_8d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_9c

    .line 1587
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1588
    :cond_9c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_ab

    .line 1589
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1590
    :cond_ab
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_ba

    .line 1591
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1592
    :cond_ba
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_c9

    .line 1593
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1594
    :cond_c9
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_d8

    .line 1595
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1596
    :cond_d8
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_e7

    .line 1597
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1598
    :cond_e7
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_f6

    .line 1599
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1600
    :cond_f6
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_105

    .line 1601
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1602
    :cond_105
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SEATNUMBER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_114

    .line 1603
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1c

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1604
    :cond_114
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_123

    .line 1605
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1606
    :cond_123
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CHARGEGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_132

    .line 1607
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1608
    :cond_132
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUELGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_141

    .line 1609
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1610
    :cond_141
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY_CONFIG:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_150

    .line 1611
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1612
    :cond_150
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ASC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_15f

    .line 1613
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1614
    :cond_15f
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CARCOLOR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_16e

    .line 1615
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1616
    :cond_16e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->REMAILMILE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_17d

    .line 1617
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1618
    :cond_17d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LIGHTCHANGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_18c

    .line 1619
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1620
    :cond_18c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ASFHTHIGHADJUST:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_19b

    .line 1621
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1622
    :cond_19b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1aa

    .line 1623
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1624
    :cond_1aa
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LEFRRIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1b9

    .line 1625
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1626
    :cond_1b9
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AFS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1c8

    .line 1627
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1628
    :cond_1c8
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MATRIXLIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1d7

    .line 1629
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1630
    :cond_1d7
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->APA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1e6

    .line 1631
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1632
    :cond_1e6
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ARNAVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1f5

    .line 1633
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1634
    :cond_1f5
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FSOUNDLOCATION:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_204

    .line 1635
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1636
    :cond_204
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->IAQC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_213

    .line 1637
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3a

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1638
    :cond_213
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRFITLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_222

    .line 1639
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1640
    :cond_222
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_FCM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_231

    .line 1641
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1642
    :cond_231
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_240

    .line 1643
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1644
    :cond_240
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ETC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_24f

    .line 1645
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3e

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1646
    :cond_24f
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRAUTOCYCLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_25e

    .line 1647
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1648
    :cond_25e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->NVS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_26d

    .line 1649
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1650
    :cond_26d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RPM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_27c

    .line 1651
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x41

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1652
    :cond_27c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->BSD:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_28b

    .line 1653
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1654
    :cond_28b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LDW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_29a

    .line 1655
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x43

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1656
    :cond_29a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2a9

    .line 1657
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x44

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1658
    :cond_2a9
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LKW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2b8

    .line 1659
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x46

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1660
    :cond_2b8
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LCA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2c7

    .line 1661
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x47

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1662
    :cond_2c7
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ACC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2d6

    .line 1663
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x48

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1664
    :cond_2d6
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2e5

    .line 1665
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4a

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1666
    :cond_2e5
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2f4

    .line 1667
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4b

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1668
    :cond_2f4
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ASR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_303

    .line 1669
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4c

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1670
    :cond_303
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ISA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_312

    .line 1671
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4d

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1672
    :cond_312
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RCTA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_321

    .line 1673
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4e

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1674
    :cond_321
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TJA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_330

    .line 1675
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4f

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1676
    :cond_330
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_33f

    .line 1677
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1678
    :cond_33f
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->GUESTID:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_34e

    .line 1679
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x51

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1680
    :cond_34e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET2:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_35e

    .line 1681
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x52

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1682
    :cond_35e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->THREE_SCREEN:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_36d

    .line 1683
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x58

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1684
    :cond_36d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MRR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_37c

    .line 1685
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x5a

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1686
    :cond_37c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MPC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_38b

    .line 1687
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x5b

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1688
    :cond_38b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SWC_HEAT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_39a

    .line 1689
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x60

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1690
    :cond_39a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3a9

    .line 1691
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x62

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1692
    :cond_3a9
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SDB:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3b8

    .line 1693
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x64

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1694
    :cond_3b8
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->BATTERY_PACK:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3c7

    .line 1695
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x66

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1696
    :cond_3c7
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->IHBCADBCHANGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3d6

    .line 1697
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x68

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1698
    :cond_3d6
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->BEAUTY_MIRROR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_19

    .line 1699
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x6b

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19
.end method

.method private static saveH97Config(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I
    .registers 9
    .param p0, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;
    .param p1, "value"    # I
    .param p2, "configPath"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 1442
    sget-object v0, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1443
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TRANSMISSION_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_22

    .line 1444
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 1563
    :cond_19
    :goto_19
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfig([ILjava/lang/String;)I

    move-result v0

    return v0

    .line 1445
    :cond_22
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2e

    .line 1446
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v3, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1447
    :cond_2e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEFORM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_3a

    .line 1448
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    invoke-static {v0, v5, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1449
    :cond_3a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->HEADUPDISPLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_47

    .line 1450
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1451
    :cond_47
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEPOWER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_55

    .line 1452
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x8

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1453
    :cond_55
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->WIRELESS_CHARGING_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_63

    .line 1454
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0xc

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1455
    :cond_63
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DIMGLASSTOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_71

    .line 1456
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0xe

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1457
    :cond_71
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_7f

    .line 1458
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1459
    :cond_7f
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CHILDLOCK:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_8d

    .line 1460
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x12

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto :goto_19

    .line 1461
    :cond_8d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_9c

    .line 1462
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x14

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1463
    :cond_9c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_ab

    .line 1464
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1465
    :cond_ab
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_ba

    .line 1466
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x16

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1467
    :cond_ba
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_c9

    .line 1468
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x17

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1469
    :cond_c9
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_d8

    .line 1470
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x18

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1471
    :cond_d8
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_e7

    .line 1472
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x19

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1473
    :cond_e7
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_f6

    .line 1474
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1a

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1475
    :cond_f6
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_105

    .line 1476
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1b

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1477
    :cond_105
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->SEATNUMBER:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_114

    .line 1478
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1c

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1479
    :cond_114
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_123

    .line 1480
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1481
    :cond_123
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CHARGEGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_132

    .line 1482
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x20

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1483
    :cond_132
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUELGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_141

    .line 1484
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x22

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1485
    :cond_141
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY_CONFIG:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_150

    .line 1486
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x24

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1487
    :cond_150
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ASC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_15f

    .line 1488
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x27

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1489
    :cond_15f
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->CARCOLOR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_16e

    .line 1490
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x28

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1491
    :cond_16e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->REMAILMILE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_17d

    .line 1492
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2c

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1493
    :cond_17d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LIGHTCHANGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_18c

    .line 1494
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2e

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1495
    :cond_18c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ASFHTHIGHADJUST:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_19b

    .line 1496
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x2f

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1497
    :cond_19b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1aa

    .line 1498
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x30

    invoke-static {v0, v1, v4, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1499
    :cond_1aa
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LEFRRIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1b9

    .line 1500
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x33

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1501
    :cond_1b9
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AFS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1c8

    .line 1502
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x34

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1503
    :cond_1c8
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MATRIXLIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1d7

    .line 1504
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x35

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1505
    :cond_1d7
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->APA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1e6

    .line 1506
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x36

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1507
    :cond_1e6
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ARNAVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_1f5

    .line 1508
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x37

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1509
    :cond_1f5
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FSOUNDLOCATION:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_204

    .line 1510
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1511
    :cond_204
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->IAQC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_213

    .line 1512
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3a

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1513
    :cond_213
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRFITLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_222

    .line 1514
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3b

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1515
    :cond_222
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_FCM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_231

    .line 1516
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3c

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1517
    :cond_231
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_240

    .line 1518
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3d

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1519
    :cond_240
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ETC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_24f

    .line 1520
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3e

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1521
    :cond_24f
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRAUTOCYCLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_25e

    .line 1522
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x3f

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1523
    :cond_25e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->NVS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_26d

    .line 1524
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x40

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1525
    :cond_26d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RPM:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_27c

    .line 1526
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x41

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1527
    :cond_27c
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->BSD:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_28b

    .line 1528
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x42

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1529
    :cond_28b
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LDW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_29a

    .line 1530
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x43

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1531
    :cond_29a
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2a9

    .line 1532
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x44

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1533
    :cond_2a9
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LKW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2b8

    .line 1534
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x46

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1535
    :cond_2b8
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->LCA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2c7

    .line 1536
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x47

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1537
    :cond_2c7
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ACC:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2d6

    .line 1538
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x48

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1539
    :cond_2d6
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2e5

    .line 1540
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4a

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1541
    :cond_2e5
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_2f4

    .line 1542
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4b

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1543
    :cond_2f4
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ASR:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_303

    .line 1544
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4c

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1545
    :cond_303
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ISA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_312

    .line 1546
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4d

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1547
    :cond_312
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->RCTA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_321

    .line 1548
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4e

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1549
    :cond_321
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->TJA:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_330

    .line 1550
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x4f

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1551
    :cond_330
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->DMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_33f

    .line 1552
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x50

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1553
    :cond_33f
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->GUESTID:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_34e

    .line 1554
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x51

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1555
    :cond_34e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET2:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_35e

    .line 1556
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x52

    const/4 v2, 0x6

    invoke-static {v0, v1, v2, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1557
    :cond_35e
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->THREE_SCREEN:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_36d

    .line 1558
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x58

    invoke-static {v0, v1, v3, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19

    .line 1559
    :cond_36d
    sget-object v0, Lcom/qinggan/vehicle/VehicleOnlineState;->ADAS:Lcom/qinggan/vehicle/VehicleOnlineState;

    if-ne p0, v0, :cond_19

    .line 1560
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfigDatas()[I

    move-result-object v0

    const/16 v1, 0x5c

    invoke-static {v0, v1, v5, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    goto/16 :goto_19
.end method

.method private static setBAICConfigToCache([I)V
    .registers 44
    .param p0, "configDatas"    # [I

    .prologue
    .line 1170
    if-nez p0, :cond_a

    .line 1171
    const-string v40, "VehicleConfigHelper"

    const-string v41, "vehicle config invalid data"

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    :goto_9
    return-void

    .line 1174
    :cond_a
    const/16 v40, 0x0

    aget v40, p0, v40

    and-int/lit8 v33, v40, 0x1

    .line 1175
    .local v33, "ss":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->ENGINE_START_STOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ss = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    const/16 v40, 0x0

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x1

    and-int/lit8 v31, v40, 0x1

    .line 1178
    .local v31, "rvc":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->REAR_CAMERA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "rvc = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1180
    const/16 v40, 0x0

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x2

    and-int/lit8 v12, v40, 0x1

    .line 1181
    .local v12, "avm":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->AVM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "avm = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    const/16 v40, 0x0

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x3

    and-int/lit8 v16, v40, 0x1

    .line 1184
    .local v16, "drl":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->DRL:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "drl = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/16 v40, 0x0

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x4

    and-int/lit8 v35, v40, 0x1

    .line 1191
    .local v35, "tBox":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "tBox = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    const/16 v40, 0x0

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x5

    and-int/lit8 v3, v40, 0x1

    .line 1194
    .local v3, "airType":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "airType = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/16 v40, 0x0

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x6

    and-int/lit8 v28, v40, 0x3

    .line 1197
    .local v28, "radarConfig":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->RADAR_CONFIGURE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "radarConfig = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    const/16 v40, 0x1

    aget v40, p0, v40

    and-int/lit8 v36, v40, 0x3

    .line 1200
    .local v36, "tcu":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->TCU:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "tcu = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1202
    const/16 v40, 0x1

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x2

    and-int/lit8 v15, v40, 0x1

    .line 1203
    .local v15, "cutoff":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->GNITION_OFF_UNLOCK_CONFIGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "cutoff = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const/16 v40, 0x1

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x3

    and-int/lit8 v18, v40, 0x1

    .line 1206
    .local v18, "dvr":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->DVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "dvr = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const/16 v40, 0x1

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x4

    and-int/lit8 v38, v40, 0xf

    .line 1209
    .local v38, "vehicle_type":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "vehicle_type = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    const/16 v40, 0x2

    aget v40, p0, v40

    and-int/lit8 v22, v40, 0xf

    .line 1212
    .local v22, "language":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->LANGUAGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "language = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1214
    const/16 v40, 0x2

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x4

    and-int/lit8 v29, v40, 0xf

    .line 1215
    .local v29, "radio_fre_scope":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->RADIO_FRE_SCOPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "radio_fre_scope = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    const/16 v40, 0x3

    aget v40, p0, v40

    and-int/lit8 v4, v40, 0x1

    .line 1218
    .local v4, "aircleaner":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_CLEANER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "aircleaner = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/16 v40, 0x3

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x1

    and-int/lit8 v25, v40, 0x1

    .line 1221
    .local v25, "mrr":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->MRR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mrr = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    const/16 v40, 0x3

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x2

    and-int/lit8 v24, v40, 0x1

    .line 1224
    .local v24, "mpc":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->MPC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "mpc = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1226
    const/16 v40, 0x3

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x3

    and-int/lit8 v20, v40, 0x1

    .line 1227
    .local v20, "fsh":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->FSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "fsh = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    const/16 v40, 0x3

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x4

    and-int/lit8 v9, v40, 0x1

    .line 1230
    .local v9, "atmospheresMuchColorLamp":I
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "atmospheresMuchColorLamp = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    const/16 v40, 0x3

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x5

    and-int/lit8 v10, v40, 0x1

    .line 1232
    .local v10, "atmospheresSignalColorLamp":I
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "atmospheresSignalColorLamp = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ne v9, v0, :cond_6d8

    .line 1234
    const/4 v9, 0x1

    .line 1240
    :goto_364
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    const/16 v40, 0x3

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x6

    and-int/lit8 v11, v40, 0x1

    .line 1242
    .local v11, "atmospheresSmartMode":I
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "atmospheresSmartMode = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP_SMART_MODE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    const/16 v40, 0x3

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x7

    and-int/lit8 v14, v40, 0x1

    .line 1245
    .local v14, "ceremonylight":I
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ceremonylight = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1246
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->CEREMONY_LIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    const/16 v40, 0x4

    aget v40, p0, v40

    and-int/lit8 v21, v40, 0x3

    .line 1248
    .local v21, "icmType":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->iCM_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "icmType = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/16 v40, 0x4

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x2

    and-int/lit8 v2, v40, 0x1

    .line 1251
    .local v2, "TCUDriveModeSetting":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->TCU_DRIVING_MODE_SETTING:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "TCUDriveModeSetting = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1253
    const/16 v40, 0x4

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x3

    and-int/lit8 v39, v40, 0x1

    .line 1254
    .local v39, "wcm":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->WIRELESS_CHARGING_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "wcm = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    const/16 v40, 0x4

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x4

    and-int/lit8 v13, v40, 0x1

    .line 1257
    .local v13, "ccp":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->CENTER_CONTROL_PANAL_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ccp = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    const/16 v40, 0x4

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x5

    and-int/lit8 v27, v40, 0x1

    .line 1260
    .local v27, "ptm":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->POWER_TAIL_GATE_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "ptm = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1262
    const/16 v40, 0x4

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x6

    and-int/lit8 v26, v40, 0x1

    .line 1263
    .local v26, "neverBreakDown":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->NEVER_BREAK_DOWN_SYSTEM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "neverBreakDown = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    const/16 v40, 0x4

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x7

    and-int/lit8 v32, v40, 0x1

    .line 1266
    .local v32, "rvm":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->RVM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "rvm = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1268
    const/16 v40, 0x5

    aget v40, p0, v40

    and-int/lit8 v6, v40, 0x1

    .line 1269
    .local v6, "apa":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->APA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "apa = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    const/16 v40, 0x5

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x1

    and-int/lit8 v5, v40, 0x1

    .line 1272
    .local v5, "amp":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->AMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1273
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "amp = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/16 v40, 0x5

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x2

    and-int/lit8 v7, v40, 0x3

    .line 1275
    .local v7, "arkams":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->ARKAMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "arkams = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    const/16 v40, 0x5

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x4

    and-int/lit8 v30, v40, 0x1

    .line 1278
    .local v30, "rainclosewindow":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->RAIN_CLOSEWINDOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "rainclosewindow = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const/16 v40, 0x5

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x5

    and-int/lit8 v23, v40, 0x1

    .line 1281
    .local v23, "lockclosewindow":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->LOCK_CLOSEWINDOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "lockclosewindow = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    const/16 v40, 0x5

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x6

    and-int/lit8 v37, v40, 0x3

    .line 1284
    .local v37, "threescreen":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->THREE_SCREEN:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "threescreen = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1286
    const/16 v40, 0x6

    aget v40, p0, v40

    and-int/lit8 v19, v40, 0x1

    .line 1287
    .local v19, "facerecognition":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->FACE_RECOGNITION:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "facerecognition = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    const/16 v40, 0x6

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x1

    and-int/lit8 v8, v40, 0x1

    .line 1290
    .local v8, "arnavi":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->AR_NAVI:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "arnavi = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    const/16 v40, 0x6

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x2

    and-int/lit8 v34, v40, 0x1

    .line 1293
    .local v34, "streammedia":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->STREAM_MEDIA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "streammedia = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1295
    const/16 v40, 0x6

    aget v40, p0, v40

    shr-int/lit8 v40, v40, 0x3

    and-int/lit8 v17, v40, 0x3

    .line 1296
    .local v17, "dsm":I
    sget-object v40, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v41, Lcom/qinggan/vehicle/VehicleOnlineState;->DSM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v42

    invoke-virtual/range {v40 .. v42}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1297
    const-string v40, "VehicleConfigHelper"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string v42, "dsm = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1235
    .end local v2    # "TCUDriveModeSetting":I
    .end local v5    # "amp":I
    .end local v6    # "apa":I
    .end local v7    # "arkams":I
    .end local v8    # "arnavi":I
    .end local v11    # "atmospheresSmartMode":I
    .end local v13    # "ccp":I
    .end local v14    # "ceremonylight":I
    .end local v17    # "dsm":I
    .end local v19    # "facerecognition":I
    .end local v21    # "icmType":I
    .end local v23    # "lockclosewindow":I
    .end local v26    # "neverBreakDown":I
    .end local v27    # "ptm":I
    .end local v30    # "rainclosewindow":I
    .end local v32    # "rvm":I
    .end local v34    # "streammedia":I
    .end local v37    # "threescreen":I
    .end local v39    # "wcm":I
    :cond_6d8
    const/16 v40, 0x1

    move/from16 v0, v40

    if-ne v10, v0, :cond_6e1

    .line 1236
    const/4 v9, 0x2

    goto/16 :goto_364

    .line 1238
    :cond_6e1
    const/4 v9, 0x0

    goto/16 :goto_364
.end method

.method private static setChangChengConfigToCache([I)V
    .registers 42
    .param p0, "configDatas"    # [I

    .prologue
    .line 218
    if-nez p0, :cond_a

    .line 219
    const-string v38, "VehicleConfigHelper"

    const-string v39, "vehicle config invalid data"

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_9
    return-void

    .line 224
    :cond_a
    const/16 v38, 0x1

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x4

    and-int/lit8 v33, v38, 0xf

    .line 225
    .local v33, "TRANSMISSION_TYPE":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->TRANSMISSION_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 226
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "TRANSMISSION_TYPE = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/16 v38, 0x1

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x1

    and-int/lit8 v37, v38, 0x1

    .line 229
    .local v37, "WARD_TYPE":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->WARD_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "WARD_TYPE = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const/16 v38, 0x2

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x4

    and-int/lit8 v15, v38, 0x1

    .line 234
    .local v15, "ENGINE_START_STOP":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->ENGINE_START_STOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 235
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "ENGINE_START_STOP = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v38, 0x2

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x1

    and-int/lit8 v4, v38, 0x1

    .line 238
    .local v4, "ALS":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->ALS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "ALS = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/16 v38, 0x3

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x4

    and-int/lit8 v9, v38, 0xf

    .line 244
    .local v9, "CAR_TYPE":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->CAR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "CAR_TYPE = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/16 v38, 0x5

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x6

    and-int/lit8 v23, v38, 0x3

    .line 249
    .local v23, "MARKET1":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET1:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "MARKET1 = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v38, 0x5

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x4

    and-int/lit8 v32, v38, 0x1

    .line 253
    .local v32, "TRAILER":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->TRAILER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "TRAILER = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v38, 0x5

    aget v38, p0, v38

    and-int/lit8 v5, v38, 0x1

    .line 257
    .local v5, "AMP":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->AMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "AMP  = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    const/16 v38, 0x6

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x1

    and-int/lit8 v36, v38, 0x1

    .line 262
    .local v36, "VSG":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->VSG:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "VSG = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    const/16 v38, 0x7

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x5

    and-int/lit8 v17, v38, 0x1

    .line 267
    .local v17, "FOLLOW_ME":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->FOLLOW_ME:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "FOLLOW_ME = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    const/16 v38, 0x7

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x3

    and-int/lit8 v3, v38, 0x3

    .line 271
    .local v3, "AIR_TYPE":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "AIR_TYPE = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const/16 v38, 0x8

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x3

    and-int/lit8 v2, v38, 0x1

    .line 276
    .local v2, "AEB":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "AEB = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    const/16 v38, 0x8

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x1

    and-int/lit8 v10, v38, 0x1

    .line 280
    .local v10, "CHAIR_MEMORY_FUN":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->CHAIR_MEMORY_FUN:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "CHAIR_MEMORY_FUN = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    const/16 v38, 0x9

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x7

    and-int/lit8 v14, v38, 0x1

    .line 286
    .local v14, "DSM":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->DSM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "DSM = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    const/16 v38, 0x9

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x5

    and-int/lit8 v30, v38, 0x1

    .line 290
    .local v30, "TBOX":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "TBOX = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/16 v38, 0x9

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x3

    and-int/lit8 v21, v38, 0x3

    .line 294
    .local v21, "IP_TYPE":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->IP_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "IP_TYPE = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    const/16 v38, 0x9

    aget v38, p0, v38

    and-int/lit8 v24, v38, 0x7

    .line 298
    .local v24, "MARKET2":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET2:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "MARKET2  = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/16 v38, 0xa

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x7

    and-int/lit8 v13, v38, 0x1

    .line 303
    .local v13, "DOW":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->DOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "TIRE_PRESSURE = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const/16 v38, 0xa

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x3

    and-int/lit8 v27, v38, 0x1

    .line 307
    .local v27, "PEPS":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->PEPS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PEPS = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const/16 v38, 0xa

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x1

    and-int/lit8 v25, v38, 0x3

    .line 311
    .local v25, "OUT_MIRROR":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->OUT_MIRROR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "OUT_MIRROR = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/16 v38, 0xc

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x7

    and-int/lit8 v35, v38, 0x1

    .line 317
    .local v35, "VOICE_REQUSET_FUN":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->VOICE_REQUSET_FUN:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "VOICE_REQUSET_FUN = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    const/16 v38, 0xc

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x3

    and-int/lit8 v20, v38, 0x1

    .line 321
    .local v20, "HMI":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->HMI:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "HMI = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    const/16 v38, 0xc

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x2

    and-int/lit8 v11, v38, 0x1

    .line 325
    .local v11, "DDCM":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->DDCM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "DDCM = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    const/16 v38, 0xd

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x5

    and-int/lit8 v22, v38, 0x1

    .line 331
    .local v22, "LDW":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->LDW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "LDW = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    const/16 v38, 0xd

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x2

    and-int/lit8 v16, v38, 0x1

    .line 335
    .local v16, "FCW":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "FCW = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const/16 v38, 0xd

    aget v38, p0, v38

    and-int/lit8 v31, v38, 0x1

    .line 339
    .local v31, "TPMS":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->TPMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "TPMS = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    const/16 v38, 0xe

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x7

    and-int/lit8 v6, v38, 0x1

    .line 344
    .local v6, "AQS":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->AQS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "AQS= "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    const/16 v38, 0xe

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x6

    and-int/lit8 v12, v38, 0x1

    .line 348
    .local v12, "DDD":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->DDD:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 349
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "DDD = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const/16 v38, 0xe

    aget v38, p0, v38

    and-int/lit8 v26, v38, 0x3

    .line 352
    .local v26, "PARK_ASSIST":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->PARK_ASSIST:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "PARK_ASSIST  = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v38, 0xf

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x6

    and-int/lit8 v8, v38, 0x3

    .line 357
    .local v8, "CAMERA_TYPE":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->CAMERA_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "CAMERA_TYPE= "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/16 v38, 0xf

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x5

    and-int/lit8 v19, v38, 0x1

    .line 361
    .local v19, "GPS_NAVI":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->GPS_NAVI:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "GPS_NAVI = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/16 v38, 0xf

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x2

    and-int/lit8 v18, v38, 0x3

    .line 365
    .local v18, "FSH":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->FSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "FSH = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    const/16 v38, 0xf

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x1

    and-int/lit8 v34, v38, 0x1

    .line 369
    .local v34, "VEHICLE_TYPE":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 370
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "VEHICLE_TYPE  = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const/16 v38, 0x10

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x7

    and-int/lit8 v7, v38, 0x1

    .line 375
    .local v7, "ATMOSPHERE_LAMP":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "ATMOSPHERE_LAMP= "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const/16 v38, 0x10

    aget v38, p0, v38

    shr-int/lit8 v38, v38, 0x6

    and-int/lit8 v29, v38, 0x1

    .line 379
    .local v29, "SEAT_VENTILATING":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->SEAT_VENTILATING:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "SEAT_VENTILATING = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const/16 v38, 0x10

    aget v38, p0, v38

    and-int/lit8 v28, v38, 0xf

    .line 383
    .local v28, "RVI":I
    sget-object v38, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v39, Lcom/qinggan/vehicle/VehicleOnlineState;->RVI:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    invoke-virtual/range {v38 .. v40}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v38, "VehicleConfigHelper"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string v40, "RVI = "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9
.end method

.method private static setDongFengConfigToCache([I)V
    .registers 28
    .param p0, "configDatas"    # [I

    .prologue
    .line 1086
    if-nez p0, :cond_a

    .line 1087
    const-string v24, "VehicleConfigHelper"

    const-string v25, "vehicle config invalid data"

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1166
    :goto_9
    return-void

    .line 1090
    :cond_a
    const/16 v24, 0x0

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x6

    and-int/lit8 v13, v24, 0x1

    .line 1091
    .local v13, "PARK_ASSIST":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->PARK_ASSIST:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1092
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "PARK_ASSIST = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1093
    const/16 v24, 0x0

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x5

    and-int/lit8 v5, v24, 0x1

    .line 1094
    .local v5, "AVM":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->AVM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1095
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "AVM = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/16 v24, 0x0

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x4

    and-int/lit8 v12, v24, 0x1

    .line 1097
    .local v12, "GENERAL_REVERSE_IMAGE":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->GENERAL_REVERSE_IMAGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1098
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "GENERAL_REVERSE_IMAGE = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    const/16 v24, 0x0

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x2

    and-int/lit8 v3, v24, 0x1

    .line 1100
    .local v3, "AEB":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1101
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "AEB = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    const/16 v24, 0x1

    aget v24, p0, v24

    and-int/lit8 v7, v24, 0x1f

    .line 1103
    .local v7, "CAR_TYPE":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->CAR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "CAR_TYPE = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    const/16 v24, 0x1

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x5

    and-int/lit8 v21, v24, 0x7

    .line 1106
    .local v21, "VEHICLE_TYPE":I
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "VEHICLE_TYPE = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    if-nez v21, :cond_3f8

    .line 1108
    const/16 v21, 0x0

    .line 1116
    :cond_111
    :goto_111
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->VEHICLE_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    const/16 v24, 0x2

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x4

    and-int/lit8 v10, v24, 0xf

    .line 1118
    .local v10, "FUNCTION_PLAY_CONFIG":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY_CONFIG:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FUNCTION_PLAY_CONFIG = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    const/16 v24, 0x3

    aget v24, p0, v24

    and-int/lit8 v14, v24, 0x3

    .line 1121
    .local v14, "PDC":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->PDC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "PDC = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    const/16 v24, 0x3

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x2

    and-int/lit8 v15, v24, 0x1

    .line 1124
    .local v15, "PM25":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->PM25:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "PM25 = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    const/16 v24, 0x3

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x3

    and-int/lit8 v2, v24, 0x1

    .line 1127
    .local v2, "ACC":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->ACC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ACC = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    const/16 v24, 0x3

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x4

    and-int/lit8 v9, v24, 0x1

    .line 1130
    .local v9, "FULL_LIQUID_CRYSTAL_IC":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->FULL_LIQUID_CRYSTAL_IC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FULL_LIQUID_CRYSTAL_IC = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    const/16 v24, 0x3

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x5

    and-int/lit8 v16, v24, 0x1

    .line 1133
    .local v16, "POWER_TRUNK":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->POWER_TRUNK:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "POWER_TRUNK = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/16 v24, 0x4

    aget v24, p0, v24

    and-int/lit8 v8, v24, 0x1

    .line 1136
    .local v8, "FCW":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "FCW = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    const/16 v24, 0x4

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x1

    and-int/lit8 v6, v24, 0x1

    .line 1139
    .local v6, "BSD":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->BSD:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "BSD = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    const/16 v24, 0x4

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x2

    and-int/lit8 v19, v24, 0x3

    .line 1142
    .local v19, "TIRE_PRESSURE":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->TIRE_PRESSURE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TIRE_PRESSURE = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    const/16 v24, 0x4

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x4

    and-int/lit8 v22, v24, 0x1

    .line 1145
    .local v22, "VOICE_CONTROL_SEAT_HEATING":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->VOICE_CONTROL_SEAT_HEATING:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "VOICE_CONTROL_SEAT_HEATING = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1147
    const/16 v24, 0x4

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x5

    and-int/lit8 v23, v24, 0x1

    .line 1148
    .local v23, "VOICE_SUNROOF":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->VOICE_SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1149
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "VOICE_SUNROOF = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    const/16 v24, 0x4

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x6

    and-int/lit8 v4, v24, 0x1

    .line 1151
    .local v4, "ATMOSPHERE_LAMP":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "ATMOSPHERE_LAMP = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    const/16 v24, 0x4

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x7

    and-int/lit8 v11, v24, 0x1

    .line 1154
    .local v11, "GEAR_CHANGE_TIPS":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->GEAR_CHANGE_TIPS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "GEAR_CHANGE_TIPS = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    const/16 v24, 0x5

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x6

    and-int/lit8 v20, v24, 0x1

    .line 1157
    .local v20, "TRUNK_KICK":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->TRUNK_KICK:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "TRUNK_KICK = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const/16 v24, 0x5

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x7

    and-int/lit8 v17, v24, 0x1

    .line 1160
    .local v17, "RAIN_AUTO_WINDOW":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->RAIN_AUTO_WINDOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "RAIN_AUTO_WINDOW = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const/16 v24, 0x5

    aget v24, p0, v24

    shr-int/lit8 v24, v24, 0x5

    and-int/lit8 v18, v24, 0x1

    .line 1163
    .local v18, "SLOW_MOVE":I
    sget-object v24, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v25, Lcom/qinggan/vehicle/VehicleOnlineState;->SLOW_MOVE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    const-string v24, "VehicleConfigHelper"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "SLOW_MOVE  = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 1109
    .end local v2    # "ACC":I
    .end local v4    # "ATMOSPHERE_LAMP":I
    .end local v6    # "BSD":I
    .end local v8    # "FCW":I
    .end local v9    # "FULL_LIQUID_CRYSTAL_IC":I
    .end local v10    # "FUNCTION_PLAY_CONFIG":I
    .end local v11    # "GEAR_CHANGE_TIPS":I
    .end local v14    # "PDC":I
    .end local v15    # "PM25":I
    .end local v16    # "POWER_TRUNK":I
    .end local v17    # "RAIN_AUTO_WINDOW":I
    .end local v18    # "SLOW_MOVE":I
    .end local v19    # "TIRE_PRESSURE":I
    .end local v20    # "TRUNK_KICK":I
    .end local v22    # "VOICE_CONTROL_SEAT_HEATING":I
    .end local v23    # "VOICE_SUNROOF":I
    :cond_3f8
    const/16 v24, 0x1

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_404

    .line 1110
    const/16 v21, 0x1

    goto/16 :goto_111

    .line 1111
    :cond_404
    const/16 v24, 0x2

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_410

    .line 1112
    const/16 v21, 0x2

    goto/16 :goto_111

    .line 1113
    :cond_410
    const/16 v24, 0x3

    move/from16 v0, v21

    move/from16 v1, v24

    if-ne v0, v1, :cond_111

    .line 1114
    const/16 v21, 0x3

    goto/16 :goto_111
.end method

.method private static setH56ConfigToCache([I)V
    .registers 80
    .param p0, "configDatas"    # [I

    .prologue
    .line 825
    if-nez p0, :cond_a

    .line 826
    const-string v76, "VehicleConfigHelper"

    const-string v77, "vehicle config invalid data"

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    :cond_9
    :goto_9
    return-void

    .line 829
    :cond_a
    const/16 v76, 0x0

    aget v76, p0, v76

    and-int/lit8 v73, v76, 0x3

    .line 830
    .local v73, "TRANSMISSION_TYPE":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->TRANSMISSION_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v73 .. v73}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "TRANSMISSION_TYPE = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    const/16 v76, 0x0

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v69, v76, 0x3

    .line 833
    .local v69, "TBOX":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v69 .. v69}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 834
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "TBOX = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const/16 v76, 0x0

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v23, v76, 0x3

    .line 836
    .local v23, "DRIVEFORM":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEFORM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DRIVEFORM = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    const/16 v76, 0x0

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v40, v76, 0x1

    .line 839
    .local v40, "HEADUPDISPLAY":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->HEADUPDISPLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 840
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "HEADUPDISPLAY = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 843
    const/16 v76, 0x1

    aget v76, p0, v76

    and-int/lit8 v24, v76, 0xf

    .line 844
    .local v24, "DRIVEPOWER":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEPOWER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DRIVEPOWER = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    const/16 v76, 0x1

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v75, v76, 0x3

    .line 847
    .local v75, "WIRELESS_CHARGING_MANAGER":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->WIRELESS_CHARGING_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v75 .. v75}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "WIRELESS_CHARGING_MANAGER = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 849
    const/16 v76, 0x1

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x6

    and-int/lit8 v20, v76, 0x3

    .line 850
    .local v20, "DIMGLASSTOP":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DIMGLASSTOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 851
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DIMGLASSTOP = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/16 v76, 0x2

    aget v76, p0, v76

    and-int/lit8 v67, v76, 0x3

    .line 854
    .local v67, "SUNROOF":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 855
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "SUNROOF = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    const/16 v76, 0x1

    move/from16 v0, v67

    move/from16 v1, v76

    if-eq v0, v1, :cond_18c

    const/16 v76, 0x3

    move/from16 v0, v67

    move/from16 v1, v76

    if-ne v0, v1, :cond_dde

    .line 857
    :cond_18c
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v78, 0x1

    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 861
    :goto_199
    sget-object v77, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v78, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNSHADE:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v76, 0x3

    move/from16 v0, v67

    move/from16 v1, v76

    if-ne v0, v1, :cond_ded

    const/16 v76, 0x1

    :goto_1a7
    invoke-static/range {v76 .. v76}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v76

    move-object/from16 v0, v77

    move-object/from16 v1, v78

    move-object/from16 v2, v76

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 862
    const/16 v76, 0x2

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v19, v76, 0x3

    .line 863
    .local v19, "CHILDLOCK":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->CHILDLOCK:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "CHILDLOCK = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/16 v76, 0x2

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v25, v76, 0x1

    .line 866
    .local v25, "DSH":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 867
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DSH = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    const/16 v76, 0x2

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x5

    and-int/lit8 v28, v76, 0x1

    .line 869
    .local v28, "DSV":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DSV = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    const/16 v76, 0x2

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x6

    and-int/lit8 v26, v76, 0x1

    .line 872
    .local v26, "DSMass":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DSMass = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    const/16 v76, 0x2

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v27, v76, 0x1

    .line 875
    .local v27, "DSMemory":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 876
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DSMemory = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const/16 v76, 0x3

    aget v76, p0, v76

    and-int/lit8 v54, v76, 0x1

    .line 879
    .local v54, "PSH":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->PSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 880
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "PSH = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    const/16 v76, 0x3

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x1

    and-int/lit8 v57, v76, 0x1

    .line 882
    .local v57, "PSV":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->PSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "PSV = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    const/16 v76, 0x3

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v55, v76, 0x1

    .line 885
    .local v55, "PSMass":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "PSMass = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/16 v76, 0x3

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x3

    and-int/lit8 v56, v76, 0x1

    .line 888
    .local v56, "PSMemory":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 889
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "PSMemory = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    const/16 v76, 0x3

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v66, v76, 0x7

    .line 891
    .local v66, "SEATNUMBER":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->SEATNUMBER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 892
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "SEATNUMBER = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/16 v76, 0x3

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v36, v76, 0x1

    .line 894
    .local v36, "FUNCTION_PLAY":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 895
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "FUNCTION_PLAY = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    const/16 v76, 0x4

    aget v76, p0, v76

    and-int/lit8 v18, v76, 0x3

    .line 899
    .local v18, "CHARGEGAPOPENTYPE":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->CHARGEGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 900
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "CHARGEGAPOPENTYPE = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 901
    const/16 v76, 0x4

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v35, v76, 0x3

    .line 902
    .local v35, "FUELGAPOPENTYPE":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->FUELGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 903
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "FUELGAPOPENTYPE = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 904
    const/16 v76, 0x4

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v37, v76, 0x7

    .line 905
    .local v37, "FUNCTION_PLAY_CONFIG":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY_CONFIG:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 906
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "FUNCTION_PLAY_CONFIG = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    const/16 v76, 0x4

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v11, v76, 0x1

    .line 908
    .local v11, "ASC":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ASC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 909
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ASC = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    const/16 v76, 0x5

    aget v76, p0, v76

    and-int/lit8 v16, v76, 0xf

    .line 912
    .local v16, "CARCOLOR":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->CARCOLOR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "CARCOLOR = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    const/16 v76, 0x5

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v60, v76, 0x3

    .line 915
    .local v60, "REMAILMILE":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->REMAILMILE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 916
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "REMAILMILE = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/16 v76, 0x5

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x6

    and-int/lit8 v47, v76, 0x1

    .line 918
    .local v47, "LIGHTCHANGE":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->LIGHTCHANGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 919
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "LIGHTCHANGE = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 920
    const/16 v76, 0x5

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v12, v76, 0x1

    .line 921
    .local v12, "ASFHTHIGHADJUST":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ASFHTHIGHADJUST:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 922
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ASFHTHIGHADJUST = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/16 v76, 0x6

    aget v76, p0, v76

    and-int/lit8 v14, v76, 0x7

    .line 926
    .local v14, "ATMOSPHERE_LAMP":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 927
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ATMOSPHERE_LAMP = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    const/16 v76, 0x6

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x3

    and-int/lit8 v46, v76, 0x1

    .line 929
    .local v46, "LEFRRIGHT":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->LEFRRIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "LEFRRIGHT = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 931
    const/16 v76, 0x6

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v5, v76, 0x1

    .line 932
    .local v5, "AFS":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->AFS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 933
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "AFS = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const/16 v76, 0x6

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x5

    and-int/lit8 v50, v76, 0x1

    .line 935
    .local v50, "MATRIXLIGHT":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->MATRIXLIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "MATRIXLIGHT = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    const/16 v76, 0x6

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x6

    and-int/lit8 v9, v76, 0x1

    .line 938
    .local v9, "APA":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->APA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "APA = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    const/16 v76, 0x6

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v10, v76, 0x1

    .line 941
    .local v10, "ARNAVR":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ARNAVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ARNAVR = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    const/16 v76, 0x7

    aget v76, p0, v76

    and-int/lit8 v34, v76, 0x3

    .line 946
    .local v34, "FSOUNDLOCATION":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->FSOUNDLOCATION:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "FSOUNDLOCATION = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    const/16 v76, 0x7

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v41, v76, 0x1

    .line 949
    .local v41, "IAQC":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->IAQC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 950
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "IAQC = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    const/16 v76, 0x7

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x3

    and-int/lit8 v7, v76, 0x1

    .line 952
    .local v7, "AIRFITLE":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRFITLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 953
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "AIRFITLE = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    const/16 v76, 0x7

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v8, v76, 0x1

    .line 955
    .local v8, "AIR_FCM":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_FCM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "AIR_FCM = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    const/16 v76, 0x7

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x5

    and-int/lit8 v29, v76, 0x1

    .line 958
    .local v29, "DVR":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DVR= "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    const/16 v76, 0x7

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x6

    and-int/lit8 v32, v76, 0x1

    .line 961
    .local v32, "ETC":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ETC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 962
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ETC= "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/16 v76, 0x7

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v6, v76, 0x1

    .line 964
    .local v6, "AIRAUTOCYCLE":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRAUTOCYCLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 965
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "AIRAUTOCYCLE= "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    const/16 v76, 0x8

    aget v76, p0, v76

    and-int/lit8 v53, v76, 0x1

    .line 969
    .local v53, "NVS":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->NVS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 970
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "NVS = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const/16 v76, 0x8

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x1

    and-int/lit8 v61, v76, 0x1

    .line 972
    .local v61, "RPM":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->RPM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 973
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "RPM = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/16 v76, 0x8

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v15, v76, 0x1

    .line 975
    .local v15, "BSD":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->BSD:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 976
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "BSD = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    const/16 v76, 0x8

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x3

    and-int/lit8 v45, v76, 0x1

    .line 978
    .local v45, "LDW":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->LDW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "LDW = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/16 v76, 0x8

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v33, v76, 0x3

    .line 981
    .local v33, "FCW":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "FCW = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    const/16 v76, 0x8

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x6

    and-int/lit8 v48, v76, 0x1

    .line 984
    .local v48, "LKW":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->LKW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 985
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "LKW = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const/16 v76, 0x8

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v44, v76, 0x1

    .line 987
    .local v44, "LCA":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->LCA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "LCA = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    const/16 v76, 0x9

    aget v76, p0, v76

    and-int/lit8 v3, v76, 0x3

    .line 991
    .local v3, "ACC":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ACC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 992
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ACC = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 993
    const/16 v76, 0x9

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v4, v76, 0x1

    .line 994
    .local v4, "AEB":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "AEB = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 996
    const/16 v76, 0x9

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x3

    and-int/lit8 v22, v76, 0x1

    .line 997
    .local v22, "DOW":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 998
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DOW = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    const/16 v76, 0x9

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v13, v76, 0x1

    .line 1000
    .local v13, "ASR":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ASR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1001
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ASR = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    const/16 v76, 0x9

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x5

    and-int/lit8 v43, v76, 0x1

    .line 1003
    .local v43, "ISA":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ISA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1004
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ISA = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1005
    const/16 v76, 0x9

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x6

    and-int/lit8 v58, v76, 0x1

    .line 1006
    .local v58, "RCTA":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->RCTA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1007
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "RCTA = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    const/16 v76, 0x9

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v71, v76, 0x1

    .line 1009
    .local v71, "TJA":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->TJA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v71 .. v71}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1010
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "TJA = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v71

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    const/16 v76, 0xa

    aget v76, p0, v76

    and-int/lit8 v21, v76, 0x1

    .line 1013
    .local v21, "DMS":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->DMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1014
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "DMS = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    const/16 v76, 0xa

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x1

    and-int/lit8 v39, v76, 0x1

    .line 1016
    .local v39, "GUESTID":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->GUESTID:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "GUESTID = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    const/16 v76, 0xa

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v49, v76, 0x3f

    .line 1019
    .local v49, "MARKET2":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET2:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "MARKET2 = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    const/16 v76, 0xb

    aget v76, p0, v76

    and-int/lit8 v70, v76, 0x3

    .line 1023
    .local v70, "THREE_SCREEN":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->THREE_SCREEN:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "THREE_SCREEN = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v70

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    const/16 v76, 0xb

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v52, v76, 0x1

    .line 1026
    .local v52, "MRR":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->MRR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "MRR = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/16 v76, 0xb

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x3

    and-int/lit8 v51, v76, 0x1

    .line 1029
    .local v51, "MPC":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->MPC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1030
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "MPC = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    const/16 v76, 0xb

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v42, v76, 0x1

    .line 1032
    .local v42, "ION":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ION:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1033
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ION = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/16 v76, 0xb

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x5

    and-int/lit8 v31, v76, 0x1

    .line 1035
    .local v31, "ESA":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ESA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ESA = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    const/16 v76, 0xb

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x6

    and-int/lit8 v30, v76, 0x1

    .line 1038
    .local v30, "ELK":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->ELK:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1039
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "ELK = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    const/16 v76, 0xb

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x7

    and-int/lit8 v72, v76, 0x1

    .line 1041
    .local v72, "TLC":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->TLC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v72 .. v72}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1042
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "TLC = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    const/16 v76, 0xc

    aget v76, p0, v76

    and-int/lit8 v74, v76, 0x1

    .line 1045
    .local v74, "WELCOME_LAMP":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->WELCOME_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v74 .. v74}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1046
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "WELCOME_LAMP = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v74

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    const/16 v76, 0xc

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x1

    and-int/lit8 v62, v76, 0x1

    .line 1048
    .local v62, "RSH":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->RSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1049
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "RSH = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1050
    const/16 v76, 0xc

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v65, v76, 0x1

    .line 1051
    .local v65, "RSV":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->RSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1052
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "RSV = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1053
    const/16 v76, 0xc

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x3

    and-int/lit8 v63, v76, 0x1

    .line 1054
    .local v63, "RSMass":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->RSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1055
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "RSMass = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    const/16 v76, 0xc

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x4

    and-int/lit8 v64, v76, 0x1

    .line 1057
    .local v64, "RSR":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->RSR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1058
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "RSR = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1059
    const/16 v76, 0xc

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x5

    and-int/lit8 v68, v76, 0x1

    .line 1060
    .local v68, "SWC_HEAT":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->SWC_HEAT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v68 .. v68}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1061
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "SWC_HEAT = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v68

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1063
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v76

    const/16 v77, 0x65

    move/from16 v0, v76

    move/from16 v1, v77

    if-eq v0, v1, :cond_d23

    .line 1064
    const/16 v76, 0xc

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x6

    and-int/lit8 v59, v76, 0x1

    .line 1065
    .local v59, "REAR_SEAT_WELCOME":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->REAR_SEAT_WELCOME:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "REAR_SEAT_WELCOME = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1069
    .end local v59    # "REAR_SEAT_WELCOME":I
    :cond_d23
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v76

    const/16 v77, 0x8f

    move/from16 v0, v76

    move/from16 v1, v77

    if-eq v0, v1, :cond_d3b

    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v76

    const/16 v77, 0x37df

    move/from16 v0, v76

    move/from16 v1, v77

    if-ne v0, v1, :cond_d68

    .line 1070
    :cond_d3b
    const/16 v76, 0xd

    aget v76, p0, v76

    and-int/lit8 v17, v76, 0x7

    .line 1071
    .local v17, "CAR_TYPE":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->CAR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1072
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "CAR_TYPE = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    .end local v17    # "CAR_TYPE":I
    :cond_d68
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v76

    const/16 v77, 0x37dd

    move/from16 v0, v76

    move/from16 v1, v77

    if-eq v0, v1, :cond_d80

    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v76

    const/16 v77, 0x37de

    move/from16 v0, v76

    move/from16 v1, v77

    if-ne v0, v1, :cond_9

    .line 1076
    :cond_d80
    const/16 v76, 0xd

    aget v76, p0, v76

    and-int/lit8 v17, v76, 0x3

    .line 1077
    .restart local v17    # "CAR_TYPE":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->CAR_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1078
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "CAR_TYPE = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1079
    const/16 v76, 0xd

    aget v76, p0, v76

    shr-int/lit8 v76, v76, 0x2

    and-int/lit8 v38, v76, 0x1

    .line 1080
    .local v38, "GLASS_HEAT":I
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->GLASS_HEAT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    const-string v76, "VehicleConfigHelper"

    new-instance v77, Ljava/lang/StringBuilder;

    invoke-direct/range {v77 .. v77}, Ljava/lang/StringBuilder;-><init>()V

    const-string v78, "GLASS_HEAT = "

    invoke-virtual/range {v77 .. v78}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v77

    move-object/from16 v0, v77

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v77

    invoke-virtual/range {v77 .. v77}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v77

    invoke-static/range {v76 .. v77}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 859
    .end local v3    # "ACC":I
    .end local v4    # "AEB":I
    .end local v5    # "AFS":I
    .end local v6    # "AIRAUTOCYCLE":I
    .end local v7    # "AIRFITLE":I
    .end local v8    # "AIR_FCM":I
    .end local v9    # "APA":I
    .end local v10    # "ARNAVR":I
    .end local v11    # "ASC":I
    .end local v12    # "ASFHTHIGHADJUST":I
    .end local v13    # "ASR":I
    .end local v14    # "ATMOSPHERE_LAMP":I
    .end local v15    # "BSD":I
    .end local v16    # "CARCOLOR":I
    .end local v17    # "CAR_TYPE":I
    .end local v18    # "CHARGEGAPOPENTYPE":I
    .end local v19    # "CHILDLOCK":I
    .end local v21    # "DMS":I
    .end local v22    # "DOW":I
    .end local v25    # "DSH":I
    .end local v26    # "DSMass":I
    .end local v27    # "DSMemory":I
    .end local v28    # "DSV":I
    .end local v29    # "DVR":I
    .end local v30    # "ELK":I
    .end local v31    # "ESA":I
    .end local v32    # "ETC":I
    .end local v33    # "FCW":I
    .end local v34    # "FSOUNDLOCATION":I
    .end local v35    # "FUELGAPOPENTYPE":I
    .end local v36    # "FUNCTION_PLAY":I
    .end local v37    # "FUNCTION_PLAY_CONFIG":I
    .end local v38    # "GLASS_HEAT":I
    .end local v39    # "GUESTID":I
    .end local v41    # "IAQC":I
    .end local v42    # "ION":I
    .end local v43    # "ISA":I
    .end local v44    # "LCA":I
    .end local v45    # "LDW":I
    .end local v46    # "LEFRRIGHT":I
    .end local v47    # "LIGHTCHANGE":I
    .end local v48    # "LKW":I
    .end local v49    # "MARKET2":I
    .end local v50    # "MATRIXLIGHT":I
    .end local v51    # "MPC":I
    .end local v52    # "MRR":I
    .end local v53    # "NVS":I
    .end local v54    # "PSH":I
    .end local v55    # "PSMass":I
    .end local v56    # "PSMemory":I
    .end local v57    # "PSV":I
    .end local v58    # "RCTA":I
    .end local v60    # "REMAILMILE":I
    .end local v61    # "RPM":I
    .end local v62    # "RSH":I
    .end local v63    # "RSMass":I
    .end local v64    # "RSR":I
    .end local v65    # "RSV":I
    .end local v66    # "SEATNUMBER":I
    .end local v68    # "SWC_HEAT":I
    .end local v70    # "THREE_SCREEN":I
    .end local v71    # "TJA":I
    .end local v72    # "TLC":I
    .end local v74    # "WELCOME_LAMP":I
    :cond_dde
    sget-object v76, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v77, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v78, 0x0

    invoke-static/range {v78 .. v78}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v78

    invoke-virtual/range {v76 .. v78}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_199

    .line 861
    :cond_ded
    const/16 v76, 0x0

    goto/16 :goto_1a7
.end method

.method private static setH97CConfigToCache([I)V
    .registers 72
    .param p0, "configDatas"    # [I

    .prologue
    .line 594
    if-nez p0, :cond_a

    .line 595
    const-string v68, "VehicleConfigHelper"

    const-string v69, "vehicle config invalid data"

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    :goto_9
    return-void

    .line 598
    :cond_a
    const/16 v68, 0x0

    aget v68, p0, v68

    and-int/lit8 v66, v68, 0x3

    .line 599
    .local v66, "TRANSMISSION_TYPE":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->TRANSMISSION_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v66 .. v66}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "TRANSMISSION_TYPE = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v66

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/16 v68, 0x0

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v63, v68, 0x3

    .line 602
    .local v63, "TBOX":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v63 .. v63}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "TBOX = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    const/16 v68, 0x0

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v23, v68, 0x3

    .line 605
    .local v23, "DRIVEFORM":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEFORM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DRIVEFORM = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/16 v68, 0x0

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x7

    and-int/lit8 v37, v68, 0x1

    .line 608
    .local v37, "HEADUPDISPLAY":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->HEADUPDISPLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "HEADUPDISPLAY = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v68, 0x1

    aget v68, p0, v68

    and-int/lit8 v24, v68, 0xf

    .line 613
    .local v24, "DRIVEPOWER":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEPOWER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DRIVEPOWER = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const/16 v68, 0x1

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v67, v68, 0x3

    .line 616
    .local v67, "WIRELESS_CHARGING_MANAGER":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->WIRELESS_CHARGING_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v67 .. v67}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "WIRELESS_CHARGING_MANAGER = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v67

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const/16 v68, 0x1

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x6

    and-int/lit8 v20, v68, 0x3

    .line 619
    .local v20, "DIMGLASSTOP":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DIMGLASSTOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DIMGLASSTOP = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    const/16 v68, 0x2

    aget v68, p0, v68

    and-int/lit8 v61, v68, 0x3

    .line 623
    .local v61, "SUNROOF":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "SUNROOF = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v61

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/16 v68, 0x2

    move/from16 v0, v61

    move/from16 v1, v68

    if-ne v0, v1, :cond_c14

    .line 626
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v70, 0x1

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNSHADE:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v70, 0x1

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    :goto_19e
    const/16 v68, 0x2

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v19, v68, 0x3

    .line 633
    .local v19, "CHILDLOCK":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->CHILDLOCK:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 634
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "CHILDLOCK = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/16 v68, 0x2

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v25, v68, 0x1

    .line 636
    .local v25, "DSH":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 637
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DSH = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    const/16 v68, 0x2

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x5

    and-int/lit8 v28, v68, 0x1

    .line 639
    .local v28, "DSV":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DSV = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    const/16 v68, 0x2

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x6

    and-int/lit8 v26, v68, 0x1

    .line 642
    .local v26, "DSMass":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 643
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DSMass = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const/16 v68, 0x2

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x7

    and-int/lit8 v27, v68, 0x1

    .line 645
    .local v27, "DSMemory":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DSMemory = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    const/16 v68, 0x3

    aget v68, p0, v68

    and-int/lit8 v51, v68, 0x1

    .line 649
    .local v51, "PSH":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->PSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "PSH = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    const/16 v68, 0x3

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x1

    and-int/lit8 v54, v68, 0x1

    .line 652
    .local v54, "PSV":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->PSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 653
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "PSV = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    const/16 v68, 0x3

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v52, v68, 0x1

    .line 655
    .local v52, "PSMass":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 656
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "PSMass = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    const/16 v68, 0x3

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x3

    and-int/lit8 v53, v68, 0x1

    .line 658
    .local v53, "PSMemory":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "PSMemory = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    const/16 v68, 0x3

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v60, v68, 0x7

    .line 661
    .local v60, "SEATNUMBER":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->SEATNUMBER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "SEATNUMBER = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v60

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    const/16 v68, 0x3

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x7

    and-int/lit8 v34, v68, 0x1

    .line 664
    .local v34, "FUNCTION_PLAY":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "FUNCTION_PLAY = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    const/16 v68, 0x4

    aget v68, p0, v68

    and-int/lit8 v18, v68, 0x3

    .line 669
    .local v18, "CHARGEGAPOPENTYPE":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->CHARGEGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "CHARGEGAPOPENTYPE = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    const/16 v68, 0x4

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v33, v68, 0x3

    .line 672
    .local v33, "FUELGAPOPENTYPE":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->FUELGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 673
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "FUELGAPOPENTYPE = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    const/16 v68, 0x4

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v35, v68, 0x7

    .line 675
    .local v35, "FUNCTION_PLAY_CONFIG":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY_CONFIG:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 676
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "FUNCTION_PLAY_CONFIG = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    const/16 v68, 0x4

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x7

    and-int/lit8 v10, v68, 0x1

    .line 678
    .local v10, "ASC":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->ASC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 679
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "ASC = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    const/16 v68, 0x5

    aget v68, p0, v68

    and-int/lit8 v17, v68, 0xf

    .line 682
    .local v17, "CARCOLOR":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->CARCOLOR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "CARCOLOR = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/16 v68, 0x5

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v56, v68, 0x3

    .line 685
    .local v56, "REMAILMILE":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->REMAILMILE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "REMAILMILE = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    const/16 v68, 0x5

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x6

    and-int/lit8 v44, v68, 0x1

    .line 688
    .local v44, "LIGHTCHANGE":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->LIGHTCHANGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 689
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "LIGHTCHANGE = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 690
    const/16 v68, 0x5

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x7

    and-int/lit8 v11, v68, 0x1

    .line 691
    .local v11, "ASFHTHIGHADJUST":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->ASFHTHIGHADJUST:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "ASFHTHIGHADJUST = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 695
    const/16 v68, 0x6

    aget v68, p0, v68

    and-int/lit8 v13, v68, 0x7

    .line 696
    .local v13, "ATMOSPHERE_LAMP":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "ATMOSPHERE_LAMP = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    const/16 v68, 0x6

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x3

    and-int/lit8 v43, v68, 0x1

    .line 699
    .local v43, "LEFRRIGHT":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->LEFRRIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "LEFRRIGHT = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const/16 v68, 0x6

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v4, v68, 0x1

    .line 702
    .local v4, "AFS":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->AFS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 703
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "AFS = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    const/16 v68, 0x6

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x5

    and-int/lit8 v47, v68, 0x1

    .line 705
    .local v47, "MATRIXLIGHT":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->MATRIXLIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "MATRIXLIGHT = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const/16 v68, 0x6

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x6

    and-int/lit8 v8, v68, 0x1

    .line 708
    .local v8, "APA":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->APA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "APA = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    const/16 v68, 0x6

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x7

    and-int/lit8 v9, v68, 0x1

    .line 711
    .local v9, "ARNAVR":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->ARNAVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "ARNAVR = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    const/16 v68, 0x7

    aget v68, p0, v68

    and-int/lit8 v32, v68, 0x3

    .line 716
    .local v32, "FSOUNDLOCATION":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->FSOUNDLOCATION:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "FSOUNDLOCATION = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 718
    const/16 v68, 0x7

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v38, v68, 0x1

    .line 719
    .local v38, "IAQC":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->IAQC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "IAQC = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/16 v68, 0x7

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x3

    and-int/lit8 v6, v68, 0x1

    .line 722
    .local v6, "AIRFITLE":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRFITLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "AIRFITLE = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const/16 v68, 0x7

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v7, v68, 0x1

    .line 725
    .local v7, "AIR_FCM":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_FCM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "AIR_FCM = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 727
    const/16 v68, 0x7

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x5

    and-int/lit8 v29, v68, 0x1

    .line 728
    .local v29, "DVR":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DVR= "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/16 v68, 0x7

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x6

    and-int/lit8 v30, v68, 0x1

    .line 731
    .local v30, "ETC":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->ETC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 732
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "ETC= "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    const/16 v68, 0x7

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x7

    and-int/lit8 v5, v68, 0x1

    .line 734
    .local v5, "AIRAUTOCYCLE":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRAUTOCYCLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "AIRAUTOCYCLE= "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    const/16 v68, 0x8

    aget v68, p0, v68

    and-int/lit8 v50, v68, 0x1

    .line 739
    .local v50, "NVS":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->NVS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 740
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "NVS = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/16 v68, 0x8

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x1

    and-int/lit8 v57, v68, 0x1

    .line 742
    .local v57, "RPM":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->RPM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 743
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "RPM = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    const/16 v68, 0x8

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v16, v68, 0x1

    .line 745
    .local v16, "BSD":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->BSD:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 746
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "BSD = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    const/16 v68, 0x8

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x3

    and-int/lit8 v42, v68, 0x1

    .line 748
    .local v42, "LDW":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->LDW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 749
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "LDW = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const/16 v68, 0x8

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v31, v68, 0x3

    .line 751
    .local v31, "FCW":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 752
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "FCW = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const/16 v68, 0x8

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x6

    and-int/lit8 v45, v68, 0x1

    .line 754
    .local v45, "LKW":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->LKW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "LKW = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    const/16 v68, 0x8

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x7

    and-int/lit8 v41, v68, 0x1

    .line 757
    .local v41, "LCA":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->LCA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 758
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "LCA = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    const/16 v68, 0x9

    aget v68, p0, v68

    and-int/lit8 v2, v68, 0x3

    .line 761
    .local v2, "ACC":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->ACC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 762
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "ACC = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const/16 v68, 0x9

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v3, v68, 0x1

    .line 764
    .local v3, "AEB":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "AEB = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/16 v68, 0x9

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x3

    and-int/lit8 v22, v68, 0x1

    .line 767
    .local v22, "DOW":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 768
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DOW = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 769
    const/16 v68, 0x9

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v12, v68, 0x1

    .line 770
    .local v12, "ASR":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->ASR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "ASR = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    const/16 v68, 0x9

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x5

    and-int/lit8 v40, v68, 0x1

    .line 773
    .local v40, "ISA":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->ISA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "ISA = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    const/16 v68, 0x9

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x6

    and-int/lit8 v55, v68, 0x1

    .line 776
    .local v55, "RCTA":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->RCTA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "RCTA = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/16 v68, 0x9

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x7

    and-int/lit8 v65, v68, 0x1

    .line 779
    .local v65, "TJA":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->TJA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v65 .. v65}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "TJA = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v65

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    const/16 v68, 0xa

    aget v68, p0, v68

    and-int/lit8 v21, v68, 0x1

    .line 783
    .local v21, "DMS":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->DMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 784
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "DMS = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 785
    const/16 v68, 0xa

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x1

    and-int/lit8 v36, v68, 0x1

    .line 786
    .local v36, "GUESTID":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->GUESTID:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "GUESTID = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const/16 v68, 0xa

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v46, v68, 0x3f

    .line 789
    .local v46, "MARKET2":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET2:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 790
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "MARKET2 = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    const/16 v68, 0xb

    aget v68, p0, v68

    and-int/lit8 v64, v68, 0x3

    .line 793
    .local v64, "THREE_SCREEN":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->THREE_SCREEN:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v64 .. v64}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 794
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "THREE_SCREEN = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    const/16 v68, 0xb

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v49, v68, 0x1

    .line 796
    .local v49, "MRR":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->MRR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "MRR = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    const/16 v68, 0xb

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x3

    and-int/lit8 v48, v68, 0x1

    .line 799
    .local v48, "MPC":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->MPC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "MPC = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    const/16 v68, 0xc

    aget v68, p0, v68

    and-int/lit8 v62, v68, 0x3

    .line 803
    .local v62, "SWC_HEAT":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->SWC_HEAT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 804
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "SWC_HEAT = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v62

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 805
    const/16 v68, 0xc

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x2

    and-int/lit8 v58, v68, 0x3

    .line 806
    .local v58, "RSH":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->RSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "RSH = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    const/16 v68, 0xc

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x4

    and-int/lit8 v59, v68, 0x3

    .line 809
    .local v59, "SDB":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->SDB:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 810
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "SDB = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    const/16 v68, 0xc

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x6

    and-int/lit8 v14, v68, 0x3

    .line 812
    .local v14, "BATTERY_PACK":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->BATTERY_PACK:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "BATTERY_PACK = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    const/16 v68, 0xd

    aget v68, p0, v68

    and-int/lit8 v39, v68, 0x3

    .line 816
    .local v39, "IHBCADBCHANGE":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->IHBCADBCHANGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 817
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "IHBCADBCHANGE = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    const/16 v68, 0xd

    aget v68, p0, v68

    shr-int/lit8 v68, v68, 0x3

    and-int/lit8 v15, v68, 0x3

    .line 819
    .local v15, "BEAUTY_MIRROR":I
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->BEAUTY_MIRROR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    const-string v68, "VehicleConfigHelper"

    new-instance v69, Ljava/lang/StringBuilder;

    invoke-direct/range {v69 .. v69}, Ljava/lang/StringBuilder;-><init>()V

    const-string v70, "BEAUTY_MIRROR = "

    invoke-virtual/range {v69 .. v70}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v69

    move-object/from16 v0, v69

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v69

    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v69

    invoke-static/range {v68 .. v69}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 629
    .end local v2    # "ACC":I
    .end local v3    # "AEB":I
    .end local v4    # "AFS":I
    .end local v5    # "AIRAUTOCYCLE":I
    .end local v6    # "AIRFITLE":I
    .end local v7    # "AIR_FCM":I
    .end local v8    # "APA":I
    .end local v9    # "ARNAVR":I
    .end local v10    # "ASC":I
    .end local v11    # "ASFHTHIGHADJUST":I
    .end local v12    # "ASR":I
    .end local v13    # "ATMOSPHERE_LAMP":I
    .end local v14    # "BATTERY_PACK":I
    .end local v15    # "BEAUTY_MIRROR":I
    .end local v16    # "BSD":I
    .end local v17    # "CARCOLOR":I
    .end local v18    # "CHARGEGAPOPENTYPE":I
    .end local v19    # "CHILDLOCK":I
    .end local v21    # "DMS":I
    .end local v22    # "DOW":I
    .end local v25    # "DSH":I
    .end local v26    # "DSMass":I
    .end local v27    # "DSMemory":I
    .end local v28    # "DSV":I
    .end local v29    # "DVR":I
    .end local v30    # "ETC":I
    .end local v31    # "FCW":I
    .end local v32    # "FSOUNDLOCATION":I
    .end local v33    # "FUELGAPOPENTYPE":I
    .end local v34    # "FUNCTION_PLAY":I
    .end local v35    # "FUNCTION_PLAY_CONFIG":I
    .end local v36    # "GUESTID":I
    .end local v38    # "IAQC":I
    .end local v39    # "IHBCADBCHANGE":I
    .end local v40    # "ISA":I
    .end local v41    # "LCA":I
    .end local v42    # "LDW":I
    .end local v43    # "LEFRRIGHT":I
    .end local v44    # "LIGHTCHANGE":I
    .end local v45    # "LKW":I
    .end local v46    # "MARKET2":I
    .end local v47    # "MATRIXLIGHT":I
    .end local v48    # "MPC":I
    .end local v49    # "MRR":I
    .end local v50    # "NVS":I
    .end local v51    # "PSH":I
    .end local v52    # "PSMass":I
    .end local v53    # "PSMemory":I
    .end local v54    # "PSV":I
    .end local v55    # "RCTA":I
    .end local v56    # "REMAILMILE":I
    .end local v57    # "RPM":I
    .end local v58    # "RSH":I
    .end local v59    # "SDB":I
    .end local v60    # "SEATNUMBER":I
    .end local v62    # "SWC_HEAT":I
    .end local v64    # "THREE_SCREEN":I
    .end local v65    # "TJA":I
    :cond_c14
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v70, 0x0

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    sget-object v68, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v69, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNSHADE:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v70, 0x0

    invoke-static/range {v70 .. v70}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v70

    invoke-virtual/range {v68 .. v70}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_19e
.end method

.method private static setH97ConfigToCache([I)V
    .registers 64
    .param p0, "configDatas"    # [I

    .prologue
    .line 389
    if-nez p0, :cond_a

    .line 390
    const-string v60, "VehicleConfigHelper"

    const-string v61, "vehicle config invalid data"

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_9
    return-void

    .line 393
    :cond_a
    const/16 v60, 0x0

    aget v60, p0, v60

    and-int/lit8 v58, v60, 0x3

    .line 394
    .local v58, "TRANSMISSION_TYPE":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->TRANSMISSION_TYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "TRANSMISSION_TYPE = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    const/16 v60, 0x0

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x2

    and-int/lit8 v56, v60, 0x3

    .line 397
    .local v56, "TBOX":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->TBOX:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "TBOX = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    const/16 v60, 0x0

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v22, v60, 0x3

    .line 400
    .local v22, "DRIVEFORM":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEFORM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DRIVEFORM = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    const/16 v60, 0x0

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x7

    and-int/lit8 v36, v60, 0x1

    .line 403
    .local v36, "HEADUPDISPLAY":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->HEADUPDISPLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "HEADUPDISPLAY = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const/16 v60, 0x1

    aget v60, p0, v60

    and-int/lit8 v23, v60, 0xf

    .line 408
    .local v23, "DRIVEPOWER":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DRIVEPOWER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DRIVEPOWER = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/16 v60, 0x1

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v59, v60, 0x3

    .line 411
    .local v59, "WIRELESS_CHARGING_MANAGER":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->WIRELESS_CHARGING_MANAGER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "WIRELESS_CHARGING_MANAGER = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    const/16 v60, 0x1

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x6

    and-int/lit8 v19, v60, 0x3

    .line 414
    .local v19, "DIMGLASSTOP":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DIMGLASSTOP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DIMGLASSTOP = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    const/16 v60, 0x2

    aget v60, p0, v60

    and-int/lit8 v55, v60, 0x3

    .line 418
    .local v55, "SUNROOF":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 419
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "SUNROOF = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    const/16 v60, 0x2

    move/from16 v0, v55

    move/from16 v1, v60

    if-ne v0, v1, :cond_aa2

    .line 421
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v62, 0x1

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNSHADE:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v62, 0x1

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    :goto_19e
    const/16 v60, 0x2

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x2

    and-int/lit8 v18, v60, 0x3

    .line 428
    .local v18, "CHILDLOCK":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->CHILDLOCK:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "CHILDLOCK = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/16 v60, 0x2

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v24, v60, 0x1

    .line 431
    .local v24, "DSH":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DSH = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/16 v60, 0x2

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x5

    and-int/lit8 v27, v60, 0x1

    .line 434
    .local v27, "DSV":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DSV = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v60, 0x2

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x6

    and-int/lit8 v25, v60, 0x1

    .line 437
    .local v25, "DSMass":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DSMass = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    const/16 v60, 0x2

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x7

    and-int/lit8 v26, v60, 0x1

    .line 440
    .local v26, "DSMemory":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DSMemory = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/16 v60, 0x3

    aget v60, p0, v60

    and-int/lit8 v47, v60, 0x1

    .line 444
    .local v47, "PSH":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->PSH:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "PSH = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    const/16 v60, 0x3

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x1

    and-int/lit8 v50, v60, 0x1

    .line 447
    .local v50, "PSV":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->PSV:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v50 .. v50}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "PSV = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    const/16 v60, 0x3

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x2

    and-int/lit8 v48, v60, 0x1

    .line 450
    .local v48, "PSMass":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMass:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v48 .. v48}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "PSMass = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    const/16 v60, 0x3

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x3

    and-int/lit8 v49, v60, 0x1

    .line 453
    .local v49, "PSMemory":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->PSMemory:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v49 .. v49}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "PSMemory = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v49

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/16 v60, 0x3

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v54, v60, 0x7

    .line 456
    .local v54, "SEATNUMBER":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->SEATNUMBER:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "SEATNUMBER = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v54

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/16 v60, 0x3

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x7

    and-int/lit8 v33, v60, 0x1

    .line 459
    .local v33, "FUNCTION_PLAY":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "FUNCTION_PLAY = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    const/16 v60, 0x4

    aget v60, p0, v60

    and-int/lit8 v17, v60, 0x3

    .line 464
    .local v17, "CHARGEGAPOPENTYPE":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->CHARGEGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "CHARGEGAPOPENTYPE = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    const/16 v60, 0x4

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x2

    and-int/lit8 v32, v60, 0x3

    .line 467
    .local v32, "FUELGAPOPENTYPE":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->FUELGAPOPENTYPE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "FUELGAPOPENTYPE = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const/16 v60, 0x4

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v34, v60, 0x7

    .line 470
    .local v34, "FUNCTION_PLAY_CONFIG":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->FUNCTION_PLAY_CONFIG:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "FUNCTION_PLAY_CONFIG = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    const/16 v60, 0x4

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x7

    and-int/lit8 v11, v60, 0x1

    .line 473
    .local v11, "ASC":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->ASC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "ASC = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/16 v60, 0x5

    aget v60, p0, v60

    and-int/lit8 v16, v60, 0xf

    .line 477
    .local v16, "CARCOLOR":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->CARCOLOR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "CARCOLOR = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    const/16 v60, 0x5

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v52, v60, 0x3

    .line 480
    .local v52, "REMAILMILE":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->REMAILMILE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v52 .. v52}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 481
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "REMAILMILE = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v52

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const/16 v60, 0x5

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x6

    and-int/lit8 v42, v60, 0x1

    .line 483
    .local v42, "LIGHTCHANGE":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->LIGHTCHANGE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v42 .. v42}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "LIGHTCHANGE = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v42

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const/16 v60, 0x5

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x7

    and-int/lit8 v12, v60, 0x1

    .line 486
    .local v12, "ASFHTHIGHADJUST":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->ASFHTHIGHADJUST:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "ASFHTHIGHADJUST = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    const/16 v60, 0x6

    aget v60, p0, v60

    and-int/lit8 v14, v60, 0x7

    .line 491
    .local v14, "ATMOSPHERE_LAMP":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->ATMOSPHERE_LAMP:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "ATMOSPHERE_LAMP = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/16 v60, 0x6

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x3

    and-int/lit8 v41, v60, 0x1

    .line 494
    .local v41, "LEFRRIGHT":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->LEFRRIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v41 .. v41}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "LEFRRIGHT = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v41

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const/16 v60, 0x6

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v5, v60, 0x1

    .line 497
    .local v5, "AFS":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->AFS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "AFS = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    const/16 v60, 0x6

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x5

    and-int/lit8 v45, v60, 0x1

    .line 500
    .local v45, "MATRIXLIGHT":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->MATRIXLIGHT:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v45 .. v45}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "MATRIXLIGHT = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v45

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/16 v60, 0x6

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x6

    and-int/lit8 v9, v60, 0x1

    .line 503
    .local v9, "APA":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->APA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "APA = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v60, 0x6

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x7

    and-int/lit8 v10, v60, 0x1

    .line 506
    .local v10, "ARNAVR":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->ARNAVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "ARNAVR = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    const/16 v60, 0x7

    aget v60, p0, v60

    and-int/lit8 v31, v60, 0x3

    .line 511
    .local v31, "FSOUNDLOCATION":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->FSOUNDLOCATION:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "FSOUNDLOCATION = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const/16 v60, 0x7

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x2

    and-int/lit8 v37, v60, 0x1

    .line 514
    .local v37, "IAQC":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->IAQC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v37 .. v37}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 515
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "IAQC = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    const/16 v60, 0x7

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x3

    and-int/lit8 v7, v60, 0x1

    .line 517
    .local v7, "AIRFITLE":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRFITLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "AIRFITLE = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    const/16 v60, 0x7

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v8, v60, 0x1

    .line 520
    .local v8, "AIR_FCM":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->AIR_FCM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "AIR_FCM = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    const/16 v60, 0x7

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x5

    and-int/lit8 v28, v60, 0x1

    .line 523
    .local v28, "DVR":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DVR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DVR= "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const/16 v60, 0x7

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x6

    and-int/lit8 v29, v60, 0x1

    .line 526
    .local v29, "ETC":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->ETC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "ETC= "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const/16 v60, 0x7

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x7

    and-int/lit8 v6, v60, 0x1

    .line 529
    .local v6, "AIRAUTOCYCLE":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->AIRAUTOCYCLE:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "AIRAUTOCYCLE= "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/16 v60, 0x8

    aget v60, p0, v60

    and-int/lit8 v46, v60, 0x1

    .line 534
    .local v46, "NVS":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->NVS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v46 .. v46}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "NVS = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    const/16 v60, 0x8

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x1

    and-int/lit8 v53, v60, 0x1

    .line 537
    .local v53, "RPM":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->RPM:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v53 .. v53}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "RPM = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const/16 v60, 0x8

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x2

    and-int/lit8 v15, v60, 0x1

    .line 540
    .local v15, "BSD":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->BSD:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "BSD = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    const/16 v60, 0x8

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x3

    and-int/lit8 v40, v60, 0x1

    .line 543
    .local v40, "LDW":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->LDW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v40 .. v40}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 544
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "LDW = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    const/16 v60, 0x8

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v30, v60, 0x3

    .line 546
    .local v30, "FCW":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->FCW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 547
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "FCW = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    const/16 v60, 0x8

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x6

    and-int/lit8 v43, v60, 0x1

    .line 549
    .local v43, "LKW":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->LKW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v43 .. v43}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "LKW = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v43

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    const/16 v60, 0x8

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x7

    and-int/lit8 v39, v60, 0x1

    .line 552
    .local v39, "LCA":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->LCA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "LCA = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/16 v60, 0x9

    aget v60, p0, v60

    and-int/lit8 v2, v60, 0x3

    .line 556
    .local v2, "ACC":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->ACC:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 557
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "ACC = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/16 v60, 0x9

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x2

    and-int/lit8 v4, v60, 0x1

    .line 559
    .local v4, "AEB":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->AEB:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "AEB = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    const/16 v60, 0x9

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x3

    and-int/lit8 v21, v60, 0x1

    .line 562
    .local v21, "DOW":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DOW:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DOW = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    const/16 v60, 0x9

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v13, v60, 0x1

    .line 565
    .local v13, "ASR":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->ASR:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "ASR = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const/16 v60, 0x9

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x5

    and-int/lit8 v38, v60, 0x1

    .line 568
    .local v38, "ISA":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->ISA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v38 .. v38}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "ISA = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    const/16 v60, 0x9

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x6

    and-int/lit8 v51, v60, 0x1

    .line 571
    .local v51, "RCTA":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->RCTA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v51 .. v51}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 572
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "RCTA = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v51

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    const/16 v60, 0x9

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x7

    and-int/lit8 v57, v60, 0x1

    .line 574
    .local v57, "TJA":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->TJA:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v57 .. v57}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "TJA = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v57

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v60, 0xa

    aget v60, p0, v60

    and-int/lit8 v20, v60, 0x1

    .line 578
    .local v20, "DMS":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->DMS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "DMS = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    const/16 v60, 0xa

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x1

    and-int/lit8 v35, v60, 0x1

    .line 581
    .local v35, "GUESTID":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->GUESTID:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 582
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "GUESTID = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const/16 v60, 0xa

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x2

    and-int/lit8 v44, v60, 0x3f

    .line 584
    .local v44, "MARKET2":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->MARKET2:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static/range {v44 .. v44}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 585
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "MARKET2 = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    move/from16 v1, v44

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/16 v60, 0xb

    aget v60, p0, v60

    shr-int/lit8 v60, v60, 0x4

    and-int/lit8 v3, v60, 0xf

    .line 588
    .local v3, "ADAS":I
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->ADAS:Lcom/qinggan/vehicle/VehicleOnlineState;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const-string v60, "VehicleConfigHelper"

    new-instance v61, Ljava/lang/StringBuilder;

    invoke-direct/range {v61 .. v61}, Ljava/lang/StringBuilder;-><init>()V

    const-string v62, "ADAS = "

    invoke-virtual/range {v61 .. v62}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v61

    move-object/from16 v0, v61

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v61

    invoke-virtual/range {v61 .. v61}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    invoke-static/range {v60 .. v61}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    .line 424
    .end local v2    # "ACC":I
    .end local v3    # "ADAS":I
    .end local v4    # "AEB":I
    .end local v5    # "AFS":I
    .end local v6    # "AIRAUTOCYCLE":I
    .end local v7    # "AIRFITLE":I
    .end local v8    # "AIR_FCM":I
    .end local v9    # "APA":I
    .end local v10    # "ARNAVR":I
    .end local v11    # "ASC":I
    .end local v12    # "ASFHTHIGHADJUST":I
    .end local v13    # "ASR":I
    .end local v14    # "ATMOSPHERE_LAMP":I
    .end local v15    # "BSD":I
    .end local v16    # "CARCOLOR":I
    .end local v17    # "CHARGEGAPOPENTYPE":I
    .end local v18    # "CHILDLOCK":I
    .end local v20    # "DMS":I
    .end local v21    # "DOW":I
    .end local v24    # "DSH":I
    .end local v25    # "DSMass":I
    .end local v26    # "DSMemory":I
    .end local v27    # "DSV":I
    .end local v28    # "DVR":I
    .end local v29    # "ETC":I
    .end local v30    # "FCW":I
    .end local v31    # "FSOUNDLOCATION":I
    .end local v32    # "FUELGAPOPENTYPE":I
    .end local v33    # "FUNCTION_PLAY":I
    .end local v34    # "FUNCTION_PLAY_CONFIG":I
    .end local v35    # "GUESTID":I
    .end local v37    # "IAQC":I
    .end local v38    # "ISA":I
    .end local v39    # "LCA":I
    .end local v40    # "LDW":I
    .end local v41    # "LEFRRIGHT":I
    .end local v42    # "LIGHTCHANGE":I
    .end local v43    # "LKW":I
    .end local v44    # "MARKET2":I
    .end local v45    # "MATRIXLIGHT":I
    .end local v46    # "NVS":I
    .end local v47    # "PSH":I
    .end local v48    # "PSMass":I
    .end local v49    # "PSMemory":I
    .end local v50    # "PSV":I
    .end local v51    # "RCTA":I
    .end local v52    # "REMAILMILE":I
    .end local v53    # "RPM":I
    .end local v54    # "SEATNUMBER":I
    .end local v57    # "TJA":I
    :cond_aa2
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNROOF:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    sget-object v60, Lcom/qinggan/vehicle/VehicleConfigHelper;->mVehicleConfigCacheMap:Ljava/util/HashMap;

    sget-object v61, Lcom/qinggan/vehicle/VehicleOnlineState;->PATEO_SUNSHADE:Lcom/qinggan/vehicle/VehicleOnlineState;

    const/16 v62, 0x0

    invoke-static/range {v62 .. v62}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v62

    invoke-virtual/range {v60 .. v62}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_19e
.end method

.method private static setValue([IIII)I
    .registers 12
    .param p0, "rawData"    # [I
    .param p1, "startBit"    # I
    .param p2, "length"    # I
    .param p3, "setValue"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, -0x1

    .line 2239
    if-le p2, v6, :cond_d

    .line 2240
    const-string v6, "VehicleConfigHelper"

    const-string v7, "ERR! only support length <= 8"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    :goto_c
    return v5

    .line 2244
    :cond_d
    new-array v1, v6, [I

    fill-array-data v1, :array_62

    .line 2245
    .local v1, "masks":[I
    add-int/lit8 v6, p2, -0x1

    aget v6, v1, v6

    and-int/2addr p3, v6

    .line 2247
    div-int/lit8 v0, p1, 0x8

    .line 2252
    .local v0, "index":I
    add-int v6, p1, p2

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v3, v6, 0x8

    .line 2253
    .local v3, "tmp":I
    if-eq v3, v0, :cond_29

    .line 2254
    const-string v6, "VehicleConfigHelper"

    const-string v7, "ERR! only support all bits are in one byte !!!!!"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 2257
    :cond_29
    rem-int/lit8 v2, p1, 0x8

    .line 2258
    .local v2, "offset":I
    aget v5, p0, v0

    and-int/lit16 v4, v5, 0xff

    .line 2259
    .local v4, "value":I
    const-string v5, "VehicleConfigHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setvalue index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  offset="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2261
    add-int/lit8 v5, p2, -0x1

    aget v5, v1, v5

    shl-int/2addr v5, v2

    xor-int/lit8 v5, v5, -0x1

    and-int/2addr v4, v5

    .line 2263
    shl-int v5, p3, v2

    or-int/2addr v4, v5

    .line 2264
    aput v4, p0, v0

    .line 2265
    aget v5, p0, v0

    goto :goto_c

    .line 2244
    nop

    :array_62
    .array-data 4
        0x1
        0x3
        0x7
        0xf
        0x1f
        0x3f
        0x7f
        0xff
    .end array-data
.end method

.method public static writeOnlineConfig(II[[ILjava/lang/String;)I
    .registers 18
    .param p0, "item"    # I
    .param p1, "value"    # I
    .param p2, "configDatas"    # [[I
    .param p3, "configPath"    # Ljava/lang/String;

    .prologue
    .line 2072
    if-nez p3, :cond_a

    .line 2073
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Please use VehicleOnlineConfig.?OnlineConfig.CONFIG_PATH"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 2074
    :cond_a
    move-object/from16 v0, p2

    array-length v11, v0

    if-lez v11, :cond_1b

    move-object/from16 v0, p2

    array-length v11, v0

    if-lt v11, p0, :cond_1b

    const/4 v11, 0x0

    aget-object v11, p2, v11

    array-length v11, v11

    const/4 v12, 0x3

    if-ge v11, v12, :cond_22

    .line 2075
    :cond_1b
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Please use VehicleOnlineConfig.?OnlineConfig.CONFIG_DATAS"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2077
    :cond_22
    if-ltz p0, :cond_29

    move-object/from16 v0, p2

    array-length v11, v0

    if-lt p0, v11, :cond_2b

    .line 2078
    :cond_29
    const/4 v11, -0x1

    .line 2122
    :goto_2a
    return v11

    .line 2080
    :cond_2b
    invoke-static/range {p3 .. p3}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2081
    .local v1, "data":Ljava/lang/String;
    if-eqz v1, :cond_39

    const-string v11, ""

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3b

    .line 2082
    :cond_39
    const/4 v11, -0x1

    goto :goto_2a

    .line 2084
    :cond_3b
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p3

    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2085
    .local v4, "file":Ljava/io/File;
    const/4 v10, 0x0

    .line 2087
    .local v10, "writeStr":Ljava/lang/String;
    const-string v11, ":"

    invoke-virtual {v1, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2088
    .local v2, "dataVale":[Ljava/lang/String;
    const/4 v11, 0x1

    aget-object v11, v2, v11

    const-string v12, "-"

    const-string v13, ""

    invoke-virtual {v11, v12, v13}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 2089
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v11

    div-int/lit8 v11, v11, 0x4

    new-array v8, v11, [Ljava/lang/String;

    .line 2090
    .local v8, "tmpStrs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_5d
    array-length v11, v8

    if-ge v6, v11, :cond_6f

    .line 2091
    mul-int/lit8 v11, v6, 0x4

    mul-int/lit8 v12, v6, 0x4

    add-int/lit8 v12, v12, 0x4

    invoke-virtual {v1, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v8, v6

    .line 2090
    add-int/lit8 v6, v6, 0x1

    goto :goto_5d

    .line 2093
    :cond_6f
    array-length v11, v8

    new-array v9, v11, [I

    .line 2094
    .local v9, "values":[I
    const/4 v6, 0x0

    :goto_73
    array-length v11, v8

    if-ge v6, v11, :cond_85

    .line 2095
    aget-object v11, v8, v6

    invoke-static {v11}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    aput v11, v9, v6

    .line 2094
    add-int/lit8 v6, v6, 0x1

    goto :goto_73

    .line 2097
    :cond_85
    aget-object v11, p2, p0

    const/4 v12, 0x0

    aget v11, v11, v12

    aget-object v12, p2, p0

    const/4 v13, 0x1

    aget v12, v12, v13

    invoke-static {v9, v11, v12, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->setValue([IIII)I

    .line 2098
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 2099
    .local v7, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    :goto_98
    array-length v11, v9

    if-ge v6, v11, :cond_c1

    .line 2100
    const-string v11, "0x"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2101
    aget v11, v9, v6

    const/16 v12, 0xf

    if-gt v11, v12, :cond_ab

    .line 2102
    const-string v11, "0"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2104
    :cond_ab
    aget v11, v9, v6

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2105
    array-length v11, v9

    add-int/lit8 v11, v11, -0x1

    if-ge v6, v11, :cond_be

    .line 2106
    const-string v11, "-"

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2099
    :cond_be
    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    .line 2109
    :cond_c1
    const-string v11, "VehicleConfigHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "sb ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2110
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2112
    :try_start_e1
    new-instance v5, Ljava/io/FileWriter;

    invoke-direct {v5, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 2113
    .local v5, "fileWriter":Ljava/io/FileWriter;
    invoke-virtual {v5, v10}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2114
    invoke-virtual {v5}, Ljava/io/FileWriter;->flush()V

    .line 2115
    invoke-virtual {v5}, Ljava/io/FileWriter;->close()V
    :try_end_ef
    .catch Ljava/io/FileNotFoundException; {:try_start_e1 .. :try_end_ef} :catch_f2
    .catch Ljava/io/IOException; {:try_start_e1 .. :try_end_ef} :catch_f9

    .line 2122
    const/4 v11, 0x0

    goto/16 :goto_2a

    .line 2116
    .end local v5    # "fileWriter":Ljava/io/FileWriter;
    :catch_f2
    move-exception v3

    .line 2117
    .local v3, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 2118
    const/4 v11, -0x1

    goto/16 :goto_2a

    .line 2119
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    :catch_f9
    move-exception v3

    .line 2120
    .local v3, "e":Ljava/io/IOException;
    const/4 v11, -0x1

    goto/16 :goto_2a
.end method

.method private static writeOnlineConfig([ILjava/lang/String;)I
    .registers 11
    .param p0, "configDatas"    # [I
    .param p1, "configPath"    # Ljava/lang/String;

    .prologue
    const/4 v6, -0x1

    .line 2032
    if-nez p1, :cond_b

    .line 2033
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v7, "Please use VehicleOnlineConfig.?OnlineConfig.CONFIG_PATH"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2034
    :cond_b
    array-length v7, p0

    if-gtz v7, :cond_15

    .line 2035
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Please use VehicleOnlineConfig.?OnlineConfig.CONFIG_DATAS"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 2036
    :cond_15
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2037
    .local v1, "file":Ljava/io/File;
    const/4 v5, 0x0

    .line 2039
    .local v5, "writeStr":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 2041
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_21
    :try_start_21
    array-length v7, p0

    if-ge v3, v7, :cond_4a

    .line 2042
    const-string v7, "0x"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2043
    aget v7, p0, v3

    const/16 v8, 0xf

    if-gt v7, v8, :cond_34

    .line 2044
    const-string v7, "0"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2046
    :cond_34
    aget v7, p0, v3

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2047
    array-length v7, p0

    add-int/lit8 v7, v7, -0x1

    if-ge v3, v7, :cond_47

    .line 2048
    const-string v7, "-"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2041
    :cond_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    .line 2051
    :cond_4a
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2052
    const-string v7, "VehicleConfigHelper"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    .line 2054
    .local v2, "fileWriter":Ljava/io/FileWriter;
    invoke-virtual {v2, v5}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 2055
    invoke-virtual {v2}, Ljava/io/FileWriter;->flush()V

    .line 2056
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_65
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_65} :catch_67
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_65} :catch_72
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_65} :catch_7d

    .line 2067
    const/4 v6, 0x0

    .end local v2    # "fileWriter":Ljava/io/FileWriter;
    :goto_66
    return v6

    .line 2057
    :catch_67
    move-exception v0

    .line 2058
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string v7, "VehicleConfigHelper"

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 2060
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_72
    move-exception v0

    .line 2061
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "VehicleConfigHelper"

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 2063
    .end local v0    # "e":Ljava/io/IOException;
    :catch_7d
    move-exception v0

    .line 2064
    .local v0, "e":Ljava/lang/Exception;
    const-string v7, "VehicleConfigHelper"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method

.method public static writeOnlineConfigItem(Landroid/content/Context;Lcom/qinggan/vehicle/VehicleOnlineState;I)I
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;
    .param p2, "value"    # I

    .prologue
    .line 1318
    const/4 v1, -0x1

    .line 1319
    .local v1, "saveSuccess":I
    invoke-static {}, Lcom/qinggan/vehicle/VehicleConfigHelper;->getVehicleTypeID()I

    move-result v2

    sparse-switch v2, :sswitch_data_5a

    .line 1351
    :goto_8
    const-string v2, "VehicleConfigHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "send reboot action , context= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    if-eqz p0, :cond_2e

    if-nez v1, :cond_2e

    .line 1353
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VEHICLE_CONFIG_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1356
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_2e
    return v1

    .line 1321
    :sswitch_2f
    const-string v2, "/sys/class/misc/cis_mcu/vehicle_cfg"

    invoke-static {p1, p2, v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->saveDongFengConfig(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I

    move-result v1

    .line 1322
    goto :goto_8

    .line 1325
    :sswitch_36
    const-string v2, "/sys/class/misc/cis_mcu/vehicle_cfg"

    invoke-static {p1, p2, v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->saveBAICConfig(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I

    move-result v1

    .line 1326
    goto :goto_8

    .line 1328
    :sswitch_3d
    const-string v2, "/sys/class/misc/cis_mcu/vehicle_cfg"

    invoke-static {p1, p2, v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->saveChangChengConfig(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I

    move-result v1

    .line 1329
    goto :goto_8

    .line 1333
    :sswitch_44
    const-string v2, "/sys/class/misc/cis_mcu/vehicle_cfg"

    invoke-static {p1, p2, v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->saveH97Config(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I

    move-result v1

    .line 1334
    goto :goto_8

    .line 1338
    :sswitch_4b
    const-string v2, "/sys/class/misc/cis_mcu/vehicle_cfg"

    invoke-static {p1, p2, v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->saveH97CConfig(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I

    move-result v1

    .line 1339
    goto :goto_8

    .line 1346
    :sswitch_52
    const-string v2, "/sys/class/misc/cis_mcu/vehicle_cfg"

    invoke-static {p1, p2, v2}, Lcom/qinggan/vehicle/VehicleConfigHelper;->saveH56Config(Lcom/qinggan/vehicle/VehicleOnlineState;ILjava/lang/String;)I

    move-result v1

    .line 1347
    goto :goto_8

    .line 1319
    nop

    :sswitch_data_5a
    .sparse-switch
        0x25 -> :sswitch_36
        0x28 -> :sswitch_2f
        0x2e -> :sswitch_36
        0x30 -> :sswitch_3d
        0x4e -> :sswitch_44
        0x65 -> :sswitch_52
        0x6f -> :sswitch_44
        0x83 -> :sswitch_44
        0x86 -> :sswitch_4b
        0x89 -> :sswitch_52
        0x8f -> :sswitch_52
        0x3459 -> :sswitch_4b
        0x345a -> :sswitch_4b
        0x37dd -> :sswitch_52
        0x37de -> :sswitch_52
        0x37df -> :sswitch_52
    .end sparse-switch
.end method

.method public static writeOnlineConfigItem(Lcom/qinggan/vehicle/VehicleOnlineState;I)I
    .registers 5
    .param p0, "vehicle"    # Lcom/qinggan/vehicle/VehicleOnlineState;
    .param p1, "value"    # I

    .prologue
    .line 1307
    const-string v0, "VehicleConfigHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeOnlineConfigItem  VehicleOnlineState= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " value ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    const/4 v0, 0x0

    invoke-static {v0, p0, p1}, Lcom/qinggan/vehicle/VehicleConfigHelper;->writeOnlineConfigItem(Landroid/content/Context;Lcom/qinggan/vehicle/VehicleOnlineState;I)I

    move-result v0

    return v0
.end method
