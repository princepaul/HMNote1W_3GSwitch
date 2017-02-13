.class public Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;
.super Landroid/preference/PreferenceFragment;
.source "FemtoPointList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/FemtoPointList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FemtoPointListFragment"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/FemtoPointList;


# direct methods
.method public constructor <init>(Lcom/mediatek/settings/FemtoPointList;)V
    .locals 0

    .prologue
    .line 99
    iput-object p1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 103
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 104
    const v1, 0x7f05000a

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->addPreferencesFromResource(I)V

    .line 105
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$402(Lcom/mediatek/settings/FemtoPointList;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;

    .line 106
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    new-instance v2, Lcom/mediatek/settings/FemtoPointList$MyHandler;

    iget-object v3, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lcom/mediatek/settings/FemtoPointList$MyHandler;-><init>(Lcom/mediatek/settings/FemtoPointList;Lcom/mediatek/settings/FemtoPointList$1;)V

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mHandler:Lcom/mediatek/settings/FemtoPointList$MyHandler;
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$502(Lcom/mediatek/settings/FemtoPointList;Lcom/mediatek/settings/FemtoPointList$MyHandler;)Lcom/mediatek/settings/FemtoPointList$MyHandler;

    .line 107
    iget-object v2, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v1, "list_networks_key"

    invoke-virtual {p0, v1}, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceScreen;

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mFemtoPointListContainer:Landroid/preference/PreferenceScreen;
    invoke-static {v2, v1}, Lcom/mediatek/settings/FemtoPointList;->access$702(Lcom/mediatek/settings/FemtoPointList;Landroid/preference/PreferenceScreen;)Landroid/preference/PreferenceScreen;

    .line 108
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mFemtoPointMap:Ljava/util/HashMap;
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$802(Lcom/mediatek/settings/FemtoPointList;Ljava/util/HashMap;)Ljava/util/HashMap;

    .line 109
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const v2, 0x7f0b012e

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->setTitle(I)V

    .line 110
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # invokes: Lcom/mediatek/settings/FemtoPointList;->setActionBarEnable()V
    invoke-static {v1}, Lcom/mediatek/settings/FemtoPointList;->access$900(Lcom/mediatek/settings/FemtoPointList;)V

    .line 111
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    invoke-virtual {v1}, Lcom/mediatek/settings/FemtoPointList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 112
    .local v0, "it":Landroid/content/Intent;
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v2, "simId"

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mSlotId:I
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$302(Lcom/mediatek/settings/FemtoPointList;I)I

    .line 113
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1, v2}, Lcom/mediatek/settings/FemtoPointList;->access$1002(Lcom/mediatek/settings/FemtoPointList;Landroid/content/IntentFilter;)Landroid/content/IntentFilter;

    .line 114
    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # getter for: Lcom/mediatek/settings/FemtoPointList;->mIntentFilter:Landroid/content/IntentFilter;
    invoke-static {v1}, Lcom/mediatek/settings/FemtoPointList;->access$1000(Lcom/mediatek/settings/FemtoPointList;)Landroid/content/IntentFilter;

    move-result-object v1

    const-string v2, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v6, 0x1

    .line 122
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick() select FemtoCell :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 123
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    const-string v1, "onPreferenceTreeClick(...) in geminiPhone status"

    # invokes: Lcom/mediatek/settings/FemtoPointList;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/mediatek/settings/FemtoPointList;->access$100(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)V

    .line 132
    :goto_0
    return v6

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    iget-object v1, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    invoke-virtual {v1}, Lcom/mediatek/settings/FemtoPointList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0131

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/mediatek/settings/FemtoPointList;->mSelectFemotCellTips:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/mediatek/settings/FemtoPointList;->access$1102(Lcom/mediatek/settings/FemtoPointList;Ljava/lang/String;)Ljava/lang/String;

    .line 128
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # invokes: Lcom/mediatek/settings/FemtoPointList;->displayFemtoCellSeletionProgressDialog()V
    invoke-static {v0}, Lcom/mediatek/settings/FemtoPointList;->access$1200(Lcom/mediatek/settings/FemtoPointList;)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # getter for: Lcom/mediatek/settings/FemtoPointList;->mPhone:Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/mediatek/settings/FemtoPointList;->access$400(Lcom/mediatek/settings/FemtoPointList;)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iget-object v0, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # getter for: Lcom/mediatek/settings/FemtoPointList;->mFemtoPointMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/mediatek/settings/FemtoPointList;->access$800(Lcom/mediatek/settings/FemtoPointList;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;

    iget-object v2, p0, Lcom/mediatek/settings/FemtoPointList$FemtoPointListFragment;->this$0:Lcom/mediatek/settings/FemtoPointList;

    # getter for: Lcom/mediatek/settings/FemtoPointList;->mHandler:Lcom/mediatek/settings/FemtoPointList$MyHandler;
    invoke-static {v2}, Lcom/mediatek/settings/FemtoPointList;->access$500(Lcom/mediatek/settings/FemtoPointList;)Lcom/mediatek/settings/FemtoPointList$MyHandler;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/mediatek/settings/FemtoPointList$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Lcom/android/internal/telephony/Phone;->selectFemtoCell(Lcom/mediatek/common/telephony/gsm/FemtoCellInfo;Landroid/os/Message;)V

    goto :goto_0
.end method
