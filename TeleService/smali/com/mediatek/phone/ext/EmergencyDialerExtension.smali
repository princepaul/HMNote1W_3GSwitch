.class public Lcom/mediatek/phone/ext/EmergencyDialerExtension;
.super Ljava/lang/Object;
.source "EmergencyDialerExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/app/Activity;Lcom/mediatek/phone/ext/IEmergencyDialer;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "emergencyDialer"    # Lcom/mediatek/phone/ext/IEmergencyDialer;

    .prologue
    .line 43
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public placeCall(Ljava/lang/String;)Z
    .locals 1
    .param p1, "lastNumber"    # Ljava/lang/String;

    .prologue
    .line 50
    const/4 v0, 0x0

    return v0
.end method

.method public updateDialAndDeleteButtonStateEnabledAttr()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
