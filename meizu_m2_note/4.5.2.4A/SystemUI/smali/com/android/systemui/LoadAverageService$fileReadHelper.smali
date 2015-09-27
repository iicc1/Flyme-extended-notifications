.class Lcom/android/systemui/LoadAverageService$fileReadHelper;
.super Ljava/lang/Object;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "fileReadHelper"
.end annotation


# direct methods
.method public static getValueFromAttrPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 80
    const/16 v4, 0x32

    new-array v2, v4, [B

    .line 83
    .local v2, "resultByte":[B
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 84
    .local v1, "inputFileReader":Ljava/io/FileInputStream;
    invoke-virtual {v1, v2}, Ljava/io/FileInputStream;->read([B)I

    .line 85
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 91
    .end local v1    # "inputFileReader":Ljava/io/FileInputStream;
    :goto_0
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 92
    .local v3, "resultString":Ljava/lang/String;
    return-object v3

    .line 86
    .end local v3    # "resultString":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/LoadAverageService;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Attribute node: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found, are you sure for this?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 89
    .local v0, "e":Ljava/io/IOException;
    # getter for: Lcom/android/systemui/LoadAverageService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/systemui/LoadAverageService;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Read attribute node failed!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
