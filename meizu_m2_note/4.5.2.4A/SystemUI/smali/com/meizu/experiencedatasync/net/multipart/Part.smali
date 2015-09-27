.class public abstract Lcom/meizu/experiencedatasync/net/multipart/Part;
.super Ljava/lang/Object;
.source "Part.java"


# static fields
.field protected static final BOUNDARY_BYTES:[B

.field protected static final CHARSET_BYTES:[B

.field protected static final CONTENT_DISPOSITION_BYTES:[B

.field protected static final CONTENT_TRANSFER_ENCODING_BYTES:[B

.field protected static final CONTENT_TYPE_BYTES:[B

.field protected static final CRLF_BYTES:[B

.field private static final DEFAULT_BOUNDARY_BYTES:[B

.field protected static final EXTRA_BYTES:[B

.field protected static final QUOTE_BYTES:[B


# instance fields
.field private boundaryBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "----------------314159265358979323846"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->BOUNDARY_BYTES:[B

    .line 70
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->BOUNDARY_BYTES:[B

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 76
    const-string v0, "\r\n"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    .line 82
    const-string v0, "\""

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->QUOTE_BYTES:[B

    .line 89
    const-string v0, "--"

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->EXTRA_BYTES:[B

    .line 96
    const-string v0, "Content-Disposition: form-data; name="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    .line 103
    const-string v0, "Content-Type: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CONTENT_TYPE_BYTES:[B

    .line 110
    const-string v0, "; charset="

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CHARSET_BYTES:[B

    .line 117
    const-string v0, "Content-Transfer-Encoding: "

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    sput-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLengthOfParts([Lcom/meizu/experiencedatasync/net/multipart/Part;[B)J
    .locals 8
    .param p0, "parts"    # [Lcom/meizu/experiencedatasync/net/multipart/Part;
    .param p1, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 408
    if-nez p0, :cond_0

    .line 409
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v6, "Parts may not be null"

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 411
    :cond_0
    const-wide/16 v4, 0x0

    .line 412
    .local v4, "total":J
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 414
    aget-object v1, p0, v0

    invoke-virtual {v1, p1}, Lcom/meizu/experiencedatasync/net/multipart/Part;->setPartBoundary([B)V

    .line 415
    aget-object v1, p0, v0

    invoke-virtual {v1}, Lcom/meizu/experiencedatasync/net/multipart/Part;->length()J

    move-result-wide v2

    .line 416
    .local v2, "l":J
    const-wide/16 v6, 0x0

    cmp-long v1, v2, v6

    if-gez v1, :cond_1

    .line 417
    const-wide/16 v6, -0x1

    .line 425
    .end local v2    # "l":J
    :goto_1
    return-wide v6

    .line 419
    .restart local v2    # "l":J
    :cond_1
    add-long/2addr v4, v2

    .line 412
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 421
    .end local v2    # "l":J
    :cond_2
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/Part;->EXTRA_BYTES:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 422
    array-length v1, p1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 423
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/Part;->EXTRA_BYTES:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    .line 424
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    array-length v1, v1

    int-to-long v6, v1

    add-long/2addr v4, v6

    move-wide v6, v4

    .line 425
    goto :goto_1
.end method

.method public static sendParts(Ljava/io/OutputStream;[Lcom/meizu/experiencedatasync/net/multipart/Part;[B)V
    .locals 3
    .param p0, "out"    # Ljava/io/OutputStream;
    .param p1, "parts"    # [Lcom/meizu/experiencedatasync/net/multipart/Part;
    .param p2, "partBoundary"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    if-nez p1, :cond_0

    .line 367
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Parts may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 369
    :cond_0
    if-eqz p2, :cond_1

    array-length v1, p2

    if-nez v1, :cond_2

    .line 370
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "partBoundary may not be empty"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 372
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    .line 374
    aget-object v1, p1, v0

    invoke-virtual {v1, p2}, Lcom/meizu/experiencedatasync/net/multipart/Part;->setPartBoundary([B)V

    .line 375
    aget-object v1, p1, v0

    invoke-virtual {v1, p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->send(Ljava/io/OutputStream;)V

    .line 372
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 377
    :cond_3
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 378
    invoke-virtual {p0, p2}, Ljava/io/OutputStream;->write([B)V

    .line 379
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 380
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p0, v1}, Ljava/io/OutputStream;->write([B)V

    .line 381
    return-void
.end method


# virtual methods
.method public abstract getCharSet()Ljava/lang/String;
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method protected getPartBoundary()[B
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/Part;->boundaryBytes:[B

    if-nez v0, :cond_0

    .line 168
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->DEFAULT_BOUNDARY_BYTES:[B

    .line 170
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/meizu/experiencedatasync/net/multipart/Part;->boundaryBytes:[B

    goto :goto_0
.end method

.method public abstract getTransferEncoding()Ljava/lang/String;
.end method

.method public isRepeatable()Z
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    return v0
.end method

.method public length()J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->lengthOfData()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 317
    const-wide/16 v2, -0x1

    .line 326
    :goto_0
    return-wide v2

    .line 319
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 320
    .local v0, "overhead":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p0, v0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 321
    invoke-virtual {p0, v0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 322
    invoke-virtual {p0, v0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 323
    invoke-virtual {p0, v0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 324
    invoke-virtual {p0, v0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 325
    invoke-virtual {p0, v0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 326
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->lengthOfData()J

    move-result-wide v4

    add-long/2addr v2, v4

    goto :goto_0
.end method

.method protected abstract lengthOfData()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public send(Ljava/io/OutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0, p1}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendStart(Ljava/io/OutputStream;)V

    .line 298
    invoke-virtual {p0, p1}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendDispositionHeader(Ljava/io/OutputStream;)V

    .line 299
    invoke-virtual {p0, p1}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendContentTypeHeader(Ljava/io/OutputStream;)V

    .line 300
    invoke-virtual {p0, p1}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendTransferEncodingHeader(Ljava/io/OutputStream;)V

    .line 301
    invoke-virtual {p0, p1}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendEndOfHeader(Ljava/io/OutputStream;)V

    .line 302
    invoke-virtual {p0, p1}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendData(Ljava/io/OutputStream;)V

    .line 303
    invoke-virtual {p0, p1}, Lcom/meizu/experiencedatasync/net/multipart/Part;->sendEnd(Ljava/io/OutputStream;)V

    .line 304
    return-void
.end method

.method protected sendContentTypeHeader(Ljava/io/OutputStream;)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->getContentType()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "contentType":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 227
    sget-object v2, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 228
    sget-object v2, Lcom/meizu/experiencedatasync/net/multipart/Part;->CONTENT_TYPE_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 229
    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 230
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->getCharSet()Ljava/lang/String;

    move-result-object v0

    .line 231
    .local v0, "charSet":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 232
    sget-object v2, Lcom/meizu/experiencedatasync/net/multipart/Part;->CHARSET_BYTES:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 233
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 236
    .end local v0    # "charSet":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected abstract sendData(Ljava/io/OutputStream;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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
    .line 213
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CONTENT_DISPOSITION_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 214
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 215
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 216
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->QUOTE_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 217
    return-void
.end method

.method protected sendEnd(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 285
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 286
    return-void
.end method

.method protected sendEndOfHeader(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 260
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 261
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 262
    return-void
.end method

.method protected sendStart(Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 201
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->EXTRA_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 202
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->getPartBoundary()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 203
    sget-object v0, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 204
    return-void
.end method

.method protected sendTransferEncodingHeader(Ljava/io/OutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 246
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->getTransferEncoding()Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "transferEncoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 248
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/Part;->CRLF_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 249
    sget-object v1, Lcom/meizu/experiencedatasync/net/multipart/Part;->CONTENT_TRANSFER_ENCODING_BYTES:[B

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 250
    invoke-static {v0}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V

    .line 252
    :cond_0
    return-void
.end method

.method setPartBoundary([B)V
    .locals 0
    .param p1, "boundaryBytes"    # [B

    .prologue
    .line 182
    iput-object p1, p0, Lcom/meizu/experiencedatasync/net/multipart/Part;->boundaryBytes:[B

    .line 183
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 336
    invoke-virtual {p0}, Lcom/meizu/experiencedatasync/net/multipart/Part;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
