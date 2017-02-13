.class Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultipleSimActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/MultipleSimActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultipleSimReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/MultipleSimActivity;


# direct methods
.method private constructor <init>(Lcom/mediatek/settings/MultipleSimActivity;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/settings/MultipleSimActivity;Lcom/mediatek/settings/MultipleSimActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/mediatek/settings/MultipleSimActivity;
    .param p2, "x1"    # Lcom/mediatek/settings/MultipleSimActivity$1;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;-><init>(Lcom/mediatek/settings/MultipleSimActivity;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "action":Ljava/lang/String;
    const-string v7, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 80
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/MultipleSimActivity;->removeDialog(I)V

    .line 81
    const-string v7, "simId"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 82
    .local v6, "slotId":I
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver  slotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 83
    const-string v7, "com.android.phone.NETWORK_MODE_CHANGE_RESPONSE"

    invoke-virtual {p2, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    .line 84
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const-string v8, "BroadcastReceiver: network mode change failed! restore the old value."

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 85
    const-string v7, "com.android.phone.OLD_NETWORK_MODE"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 86
    .local v4, "oldMode":I
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    iget-object v7, v7, Lcom/mediatek/settings/MultipleSimActivity;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    iget-object v8, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v8, v6}, Lcom/mediatek/settings/MultipleSimActivity;->getNetworkModeName(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 88
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver, oldMode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 89
    const-string v7, "NETWORK_MODE"

    iget-object v8, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    iget-object v8, v8, Lcom/mediatek/settings/MultipleSimActivity;->mFeatureName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 90
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    const-string v8, "setValue  to oldMode "

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 91
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v7}, Lcom/mediatek/settings/MultipleSimActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v7

    const-string v8, "select_sim_card_activity"

    invoke-virtual {v7, v8}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Landroid/preference/PreferenceFragment;

    .line 93
    .local v2, "fragment":Landroid/preference/PreferenceFragment;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v7

    if-ge v3, v7, :cond_0

    .line 94
    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    .local v5, "p":Landroid/preference/Preference;
    move-object v7, v5

    .line 95
    check-cast v7, Lcom/mediatek/gemini/simui/SimCardInfoPreference;

    invoke-virtual {v7}, Lcom/mediatek/gemini/simui/SimCardInfoPreference;->getSimSlotId()I

    move-result v7

    if-ne v6, v7, :cond_1

    .line 96
    check-cast v5, Landroid/preference/ListPreference;

    .end local v5    # "p":Landroid/preference/Preference;
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 114
    .end local v2    # "fragment":Landroid/preference/PreferenceFragment;
    .end local v3    # "i":I
    .end local v4    # "oldMode":I
    .end local v6    # "slotId":I
    :cond_0
    :goto_1
    return-void

    .line 93
    .restart local v2    # "fragment":Landroid/preference/PreferenceFragment;
    .restart local v3    # "i":I
    .restart local v4    # "oldMode":I
    .restart local v5    # "p":Landroid/preference/Preference;
    .restart local v6    # "slotId":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 102
    .end local v2    # "fragment":Landroid/preference/PreferenceFragment;
    .end local v3    # "i":I
    .end local v4    # "oldMode":I
    .end local v5    # "p":Landroid/preference/Preference;
    .end local v6    # "slotId":I
    :cond_2
    const-string v7, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "android.intent.action.DUAL_SIM_MODE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 105
    :cond_3
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "BroadcastReceiver, action = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 106
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    # invokes: Lcom/mediatek/settings/MultipleSimActivity;->updatePreferenceEnableState()V
    invoke-static {v7}, Lcom/mediatek/settings/MultipleSimActivity;->access$100(Lcom/mediatek/settings/MultipleSimActivity;)V

    goto :goto_1

    .line 107
    :cond_4
    const-string v7, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 108
    invoke-static {p1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 109
    .local v1, "count":I
    if-ge v1, v11, :cond_0

    .line 110
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sim size = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", Activity finished"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/mediatek/settings/MultipleSimActivity;->log(Ljava/lang/String;)V

    .line 111
    iget-object v7, p0, Lcom/mediatek/settings/MultipleSimActivity$MultipleSimReceiver;->this$0:Lcom/mediatek/settings/MultipleSimActivity;

    invoke-virtual {v7}, Lcom/mediatek/settings/MultipleSimActivity;->finish()V

    goto :goto_1
.end method
