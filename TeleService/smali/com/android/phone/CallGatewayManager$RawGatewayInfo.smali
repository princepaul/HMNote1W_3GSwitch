.class public Lcom/android/phone/CallGatewayManager$RawGatewayInfo;
.super Ljava/lang/Object;
.source "CallGatewayManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallGatewayManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RawGatewayInfo"
.end annotation


# instance fields
.field public gatewayUri:Landroid/net/Uri;

.field public packageName:Ljava/lang/String;

.field public trueNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 0
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "gatewayUri"    # Landroid/net/Uri;
    .param p3, "trueNumber"    # Ljava/lang/String;

    .prologue
    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    iput-object p1, p0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->packageName:Ljava/lang/String;

    .line 197
    iput-object p2, p0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->gatewayUri:Landroid/net/Uri;

    .line 198
    iput-object p3, p0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->trueNumber:Ljava/lang/String;

    .line 199
    return-void
.end method


# virtual methods
.method public getFormattedGatewayNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->gatewayUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/phone/CallGatewayManager;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CallGatewayManager$RawGatewayInfo;->gatewayUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
