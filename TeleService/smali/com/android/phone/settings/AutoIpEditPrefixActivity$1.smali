.class Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;
.super Ljava/lang/Object;
.source "AutoIpEditPrefixActivity.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/AutoIpEditPrefixActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoIpEditPrefixActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoIpEditPrefixActivity;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;->this$0:Lcom/android/phone/settings/AutoIpEditPrefixActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->getIccCardCount()I

    move-result v0

    .line 30
    .local v0, "count":I
    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;->this$0:Lcom/android/phone/settings/AutoIpEditPrefixActivity;

    invoke-virtual {v1}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->finish()V

    .line 35
    :goto_0
    return-void

    .line 33
    :cond_0
    iget-object v1, p0, Lcom/android/phone/settings/AutoIpEditPrefixActivity$1;->this$0:Lcom/android/phone/settings/AutoIpEditPrefixActivity;

    # invokes: Lcom/android/phone/settings/AutoIpEditPrefixActivity;->updateSimDisplayName()V
    invoke-static {v1}, Lcom/android/phone/settings/AutoIpEditPrefixActivity;->access$000(Lcom/android/phone/settings/AutoIpEditPrefixActivity;)V

    goto :goto_0
.end method
