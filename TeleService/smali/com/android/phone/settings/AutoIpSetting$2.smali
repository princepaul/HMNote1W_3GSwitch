.class Lcom/android/phone/settings/AutoIpSetting$2;
.super Ljava/lang/Object;
.source "AutoIpSetting.java"

# interfaces
.implements Lmiui/telephony/SubscriptionManager$OnSubscriptionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/AutoIpSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/AutoIpSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/AutoIpSetting;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/phone/settings/AutoIpSetting$2;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/settings/AutoIpSetting$2;->this$0:Lcom/android/phone/settings/AutoIpSetting;

    # invokes: Lcom/android/phone/settings/AutoIpSetting;->updateTextIpPrefix()V
    invoke-static {v0}, Lcom/android/phone/settings/AutoIpSetting;->access$200(Lcom/android/phone/settings/AutoIpSetting;)V

    .line 126
    return-void
.end method
