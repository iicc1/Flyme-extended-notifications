.class public Lcom/meizu/experiencedatasync/net/multipart/StringPart;
.super Lcom/meizu/experiencedatasync/net/multipart/PartBase;
.source "StringPart.java"


# instance fields
.field private content:[B

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "charset"    # Ljava/lang/String;

    .prologue
    .line 75
    const-string v0, "text/plain"

    if-nez p3, :cond_0

    const-string p3, "US-ASCII"

    .end local p3    # "charset":Ljava/lang/String;
    :cond_0
    const-string v1, "8bit"

    invoke-direct {p0, p1, v0, p3, v1}, Lcom/meizu/experiencedatasync/net/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    if-nez p2, :cond_1

    .line 82
    const-string p2, ""

    .line 87
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NULs may not be present in string parts"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2
    iput-object p2, p0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;->value:Ljava/lang/String;

    .line 92
    return-void
.end method

.method private getContent()[B
    .locals 2

    .prologue
    .line 111
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;->content:[B

    if-nez v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;->value:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;->getCharSet()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/http/util/EncodingUtils;->getBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;->content:[B

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/StringPart;->content:[B

    return-object v0
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 134
    invoke-direct {p0}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;->getContent()[B

    move-result-object v0

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/meizu/experiencedatasync/net/multipart/StringPart;->getContent()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 125
    return-void
.end method
