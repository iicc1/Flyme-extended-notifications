.class public Lcom/meizu/common/widget/RecipientEdit$Recipient;
.super Ljava/lang/Object;
.source "RecipientEdit.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/RecipientEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Recipient"
.end annotation


# instance fields
.field public mAddress:Ljava/lang/String;

.field public mDisplayName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3771
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3772
    return-void
.end method

.method private static dataToRecipient(Ljava/io/DataInputStream;)Lcom/meizu/common/widget/RecipientEdit$Recipient;
    .locals 2
    .param p0, "dataIn"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3804
    new-instance v0, Lcom/meizu/common/widget/RecipientEdit$Recipient;

    invoke-direct {v0}, Lcom/meizu/common/widget/RecipientEdit$Recipient;-><init>()V

    .line 3805
    .local v0, "recipient":Lcom/meizu/common/widget/RecipientEdit$Recipient;
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/common/widget/RecipientEdit$Recipient;->mAddress:Ljava/lang/String;

    .line 3806
    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/meizu/common/widget/RecipientEdit$Recipient;->mDisplayName:Ljava/lang/String;

    .line 3807
    return-object v0
.end method

.method public static dataToRecipientList([B)Ljava/util/ArrayList;
    .locals 6
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/meizu/common/widget/RecipientEdit$Recipient;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3775
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3776
    .local v4, "recipientList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/meizu/common/widget/RecipientEdit$Recipient;>;"
    if-eqz p0, :cond_1

    .line 3777
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 3778
    .local v0, "byteArrayIn":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 3781
    .local v1, "dataIn":Ljava/io/DataInputStream;
    :goto_0
    :try_start_0
    invoke-static {v1}, Lcom/meizu/common/widget/RecipientEdit$Recipient;->dataToRecipient(Ljava/io/DataInputStream;)Lcom/meizu/common/widget/RecipientEdit$Recipient;

    move-result-object v3

    .line 3782
    .local v3, "recipient":Lcom/meizu/common/widget/RecipientEdit$Recipient;
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 3784
    .end local v3    # "recipient":Lcom/meizu/common/widget/RecipientEdit$Recipient;
    :catch_0
    move-exception v2

    .line 3785
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3788
    if-eqz v0, :cond_0

    .line 3789
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 3791
    :cond_0
    if-eqz v1, :cond_1

    .line 3792
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 3799
    .end local v0    # "byteArrayIn":Ljava/io/ByteArrayInputStream;
    .end local v1    # "dataIn":Ljava/io/DataInputStream;
    .end local v2    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v4

    .line 3794
    .restart local v0    # "byteArrayIn":Ljava/io/ByteArrayInputStream;
    .restart local v1    # "dataIn":Ljava/io/DataInputStream;
    .restart local v2    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 3795
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 3787
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 3788
    if-eqz v0, :cond_2

    .line 3789
    :try_start_3
    invoke-virtual {v0}, Ljava/io/ByteArrayInputStream;->close()V

    .line 3791
    :cond_2
    if-eqz v1, :cond_3

    .line 3792
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 3796
    :cond_3
    :goto_2
    throw v5

    .line 3794
    :catch_2
    move-exception v2

    .line 3795
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2
.end method
