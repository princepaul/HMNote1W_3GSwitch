.class Lcom/android/phone/settings/MobileNetworkSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/MobileNetworkSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/MobileNetworkSettings;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/MobileNetworkSettings;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/android/phone/settings/MobileNetworkSettings$1;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 155
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/phone/settings/MobileNetworkSettings$1;->this$0:Lcom/android/phone/settings/MobileNetworkSettings;

    invoke-virtual {v1}, Lcom/android/phone/settings/MobileNetworkSettings;->updatePreferenceUI()V

    .line 159
    :cond_0
    return-void
.end method
