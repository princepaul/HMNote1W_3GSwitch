.class Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment$1;
.super Ljava/lang/Object;
.source "SipCallSetting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;

.field final synthetic val$intEnable:I


# direct methods
.method constructor <init>(Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;I)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment$1;->this$0:Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;

    iput p2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment$1;->val$intEnable:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 149
    iget-object v0, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment$1;->this$0:Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;

    iget-object v0, v0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment;->instanceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/settings/SipCallSetting;

    iget v2, p0, Lcom/mediatek/settings/SipCallSetting$SipCallSettingFragment$1;->val$intEnable:I

    if-ne v2, v1, :cond_0

    :goto_0
    # invokes: Lcom/mediatek/settings/SipCallSetting;->handleSipReceiveCallsOption(Z)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/SipCallSetting;->access$700(Lcom/mediatek/settings/SipCallSetting;Z)V

    .line 150
    return-void

    .line 149
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
