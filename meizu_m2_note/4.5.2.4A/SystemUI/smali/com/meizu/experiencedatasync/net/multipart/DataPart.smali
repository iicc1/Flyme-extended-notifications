.class public Lcom/meizu/experiencedatasync/net/multipart/DataPart;
.super Lcom/meizu/experiencedatasync/net/multipart/PartBase;
.source "DataPart.java"


# static fields
.field private static final FILE_NAME_BYTES:[B


# instance fields
.field private filename:Ljava/lang/String;

.field private source:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "; filename="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->FILE_NAME_BYTES:[B

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "data"    # [B
    .param p4, "contentType"    # Ljava/lang/String;
    .param p5, "charset"    # Ljava/lang/String;

    .prologue
    .line 48
    if-nez p4, :cond_0

    const-string p4, "application/octet-stream"

    .end local p4    # "contentType":Ljava/lang/String;
    :cond_0
    if-nez p5, :cond_1

    const-string p5, "ISO-8859-1"

    .end local p5    # "charset":Ljava/lang/String;
    :cond_1
    const-string v0, "binary"

    invoke-direct {p0, p1, p4, p5, v0}, Lcom/meizu/experiencedatasync/net/multipart/PartBase;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    if-nez p3, :cond_2

    .line 55
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 57
    :cond_2
    iput-object p2, p0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->filename:Ljava/lang/String;

    .line 58
    iput-object p3, p0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->source:[B

    .line 59
    return-void
.end method


# virtual methods
.method protected lengthOfData()J
    .locals 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->source:[B

    array-length v0, v0

    int-to-long v0, v0

    return-wide v0
.end method

.method protected sendData(Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->lengthOfData()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 122
    :goto_0
    return-void

    .line 111
    :cond_0
    const/16 v3, 0x1000

    new-array v2, v3, [B

    .line 112
    .local v2, "tmp":[B
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->source:[B

    invoke-direct {v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 115
    .local v0, "instream":Ljava/io/ByteArrayInputStream;
    :goto_1
    :try_start_0
    invoke-virtual {v0, v2}, Ljava/io/ByteArrayInputStream;->read([B)I

    move-result v1

    .local v1, "len":I
    if-ltz v1, :cond_1

    .line 116
    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 120
    .end local v1    # "len":I
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    throw v3

    .restart local v1    # "len":I
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    goto :goto_0
.end method

.method protected sendDispositionHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    invoke-super {p0, p1}, Lcom/meizu/experiencedatasync/net/multipart/PartBase;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 86
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->filename:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 87
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->FILE_NAME_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 88
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 89
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->filename:Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 90
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/DataPart;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 92
    :cond_0
    return-void
.end method
