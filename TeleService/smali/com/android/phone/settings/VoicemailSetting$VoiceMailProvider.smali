.class Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "VoicemailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/settings/VoicemailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public intent:Landroid/content/Intent;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/settings/VoicemailSetting;


# direct methods
.method public constructor <init>(Lcom/android/phone/settings/VoicemailSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;->this$0:Lcom/android/phone/settings/VoicemailSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p2, p0, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;->name:Ljava/lang/String;

    .line 192
    iput-object p3, p0, Lcom/android/phone/settings/VoicemailSetting$VoiceMailProvider;->intent:Landroid/content/Intent;

    .line 193
    return-void
.end method
