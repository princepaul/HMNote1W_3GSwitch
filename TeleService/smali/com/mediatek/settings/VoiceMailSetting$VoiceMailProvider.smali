.class Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;
.super Ljava/lang/Object;
.source "VoiceMailSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/VoiceMailSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProvider"
.end annotation


# instance fields
.field public mIntent:Landroid/content/Intent;

.field public mName:Ljava/lang/String;

.field final synthetic this$0:Lcom/mediatek/settings/VoiceMailSetting;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/VoiceMailSetting;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;->this$0:Lcom/mediatek/settings/VoiceMailSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    iput-object p2, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;->mName:Ljava/lang/String;

    .line 182
    iput-object p3, p0, Lcom/mediatek/settings/VoiceMailSetting$VoiceMailProvider;->mIntent:Landroid/content/Intent;

    .line 183
    return-void
.end method
