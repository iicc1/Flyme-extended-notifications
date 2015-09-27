.class Lcom/meizu/experiencedatasync/net/HttpHelper$EasySSLSocketFactory$1;
.super Ljava/lang/Object;
.source "HttpHelper.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/experiencedatasync/net/HttpHelper$EasySSLSocketFactory;-><init>(Ljava/security/KeyStore;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/experiencedatasync/net/HttpHelper$EasySSLSocketFactory;


# direct methods
.method constructor <init>(Lcom/meizu/experiencedatasync/net/HttpHelper$EasySSLSocketFactory;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/meizu/experiencedatasync/net/HttpHelper$EasySSLSocketFactory$1;->this$0:Lcom/meizu/experiencedatasync/net/HttpHelper$EasySSLSocketFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 136
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 143
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return-object v0
.end method
