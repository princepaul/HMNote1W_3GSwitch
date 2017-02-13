.class Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;
.super Ljava/lang/Object;
.source "PhoneInterfaceManagerEx.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/phone/PhoneInterfaceManagerEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScAddrGemini"
.end annotation


# instance fields
.field public scAddr:Ljava/lang/String;

.field public simId:I

.field final synthetic this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;


# direct methods
.method public constructor <init>(Lcom/mediatek/phone/PhoneInterfaceManagerEx;Ljava/lang/String;I)V
    .locals 1
    .param p2, "addr"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 288
    iput-object p1, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->this$0:Lcom/mediatek/phone/PhoneInterfaceManagerEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 289
    iput-object p2, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->scAddr:Ljava/lang/String;

    .line 290
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    if-eq p3, v0, :cond_0

    const/4 v0, 0x2

    if-eq p3, v0, :cond_0

    const/4 v0, 0x3

    if-ne p3, v0, :cond_1

    .line 294
    :cond_0
    iput p3, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->simId:I

    .line 298
    :goto_0
    return-void

    .line 296
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/phone/PhoneInterfaceManagerEx$ScAddrGemini;->simId:I

    goto :goto_0
.end method
