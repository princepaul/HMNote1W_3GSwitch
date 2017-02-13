.class public Lcom/mediatek/phone/ext/CallCardExtension;
.super Ljava/lang/Object;
.source "CallCardExtension.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public displayMainCallStatus(Lcom/android/internal/telephony/Call;Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)V
    .locals 0
    .param p1, "call"    # Lcom/android/internal/telephony/Call;
    .param p2, "simInfo"    # Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .prologue
    .line 71
    return-void
.end method

.method public onFinishInflate(Landroid/view/View;)V
    .locals 0
    .param p1, "callCard"    # Landroid/view/View;

    .prologue
    .line 52
    return-void
.end method

.method public updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)Z
    .locals 1
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 68
    return-void
.end method
