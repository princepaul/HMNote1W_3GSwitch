.class Lcom/android/phone/settings/VoicemailSetting$5;
.super Ljava/lang/Object;
.source "VoicemailSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/settings/VoicemailSetting;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/settings/VoicemailSetting;


# direct methods
.method constructor <init>(Lcom/android/phone/settings/VoicemailSetting;)V
    .locals 0

    .prologue
    .line 1383
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSetting$5;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x2

    .line 1386
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting$5;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # getter for: Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;
    invoke-static {v0}, Lcom/android/phone/settings/VoicemailSetting;->access$000(Lcom/android/phone/settings/VoicemailSetting;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1387
    iget-object v0, p0, Lcom/android/phone/settings/VoicemailSetting$5;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    iget-object v1, p0, Lcom/android/phone/settings/VoicemailSetting$5;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    # getter for: Lcom/android/phone/settings/VoicemailSetting;->mVoicemailNotificationRingtone:Landroid/preference/Preference;
    invoke-static {v1}, Lcom/android/phone/settings/VoicemailSetting;->access$000(Lcom/android/phone/settings/VoicemailSetting;)Landroid/preference/Preference;

    move-result-object v1

    # invokes: Lcom/android/phone/settings/VoicemailSetting;->updateRingtoneName(ILandroid/preference/Preference;I)V
    invoke-static {v0, v2, v1, v2}, Lcom/android/phone/settings/VoicemailSetting;->access$700(Lcom/android/phone/settings/VoicemailSetting;ILandroid/preference/Preference;I)V

    .line 1390
    :cond_0
    return-void
.end method
