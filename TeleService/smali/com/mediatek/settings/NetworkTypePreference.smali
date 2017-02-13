.class public Lcom/mediatek/settings/NetworkTypePreference;
.super Landroid/app/Activity;
.source "NetworkTypePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;
    }
.end annotation


# static fields
.field private static final KEY_NETWORK_TYPE_2G:Ljava/lang/String; = "key_network_type_2g"

.field private static final KEY_NETWORK_TYPE_3G:Ljava/lang/String; = "key_network_type_3g"

.field private static final KEY_NETWORK_TYPE_4G:Ljava/lang/String; = "key_network_type_4g"

.field private static final MENU_CONFIRM:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Settings/NetworkTypePreference"

.field private static final TAG_NETWORK_TYPE_PREFERENCE:Ljava/lang/String; = "network_type_preference"


# instance fields
.field private m2GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private m2GSelected:Z

.field private m3GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private m3GSelected:Z

.field private m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

.field private m4GSelected:Z

.field private mAct:I

.field private mAirplaneModeEnabled:Z

.field private mDualSimMode:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mAirplaneModeEnabled:Z

    .line 49
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mDualSimMode:I

    .line 52
    new-instance v0, Lcom/mediatek/settings/NetworkTypePreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/NetworkTypePreference$1;-><init>(Lcom/mediatek/settings/NetworkTypePreference;)V

    iput-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 79
    return-void
.end method

.method static synthetic access$002(Lcom/mediatek/settings/NetworkTypePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/mediatek/settings/NetworkTypePreference;->mAirplaneModeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/NetworkTypePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkTypePreference;->updateScreen()V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/settings/NetworkTypePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GSelected:Z

    return p1
.end method

.method static synthetic access$202(Lcom/mediatek/settings/NetworkTypePreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/mediatek/settings/NetworkTypePreference;->mDualSimMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/NetworkTypePreference;)I
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;

    .prologue
    .line 30
    iget v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mSlotId:I

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/content/BroadcastReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/NetworkTypePreference;)V
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkTypePreference;->init()V

    return-void
.end method

.method static synthetic access$600(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$702(Lcom/mediatek/settings/NetworkTypePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GSelected:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/settings/NetworkTypePreference;)Landroid/preference/CheckBoxPreference;
    .locals 1
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/settings/NetworkTypePreference;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/mediatek/settings/NetworkTypePreference;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    iput-boolean p1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GSelected:Z

    return p1
.end method

.method private convertAct2Selections(I)V
    .locals 3
    .param p1, "act"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 233
    const/16 v0, 0xd

    if-gt p1, v0, :cond_0

    if-ge p1, v1, :cond_1

    .line 239
    :cond_0
    :goto_0
    return-void

    .line 236
    :cond_1
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_2

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GSelected:Z

    .line 237
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GSelected:Z

    .line 238
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_4

    :goto_3
    iput-boolean v1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GSelected:Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 236
    goto :goto_1

    :cond_3
    move v0, v2

    .line 237
    goto :goto_2

    :cond_4
    move v1, v2

    .line 238
    goto :goto_3
.end method

.method private convertSelections2Act()I
    .locals 2

    .prologue
    .line 242
    const/4 v0, 0x0

    .line 243
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GSelected:Z

    if-eqz v1, :cond_0

    .line 244
    add-int/lit8 v0, v0, 0x1

    .line 246
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GSelected:Z

    if-eqz v1, :cond_1

    .line 247
    add-int/lit8 v0, v0, 0x4

    .line 249
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GSelected:Z

    if-eqz v1, :cond_2

    .line 250
    add-int/lit8 v0, v0, 0x8

    .line 252
    :cond_2
    return v0
.end method

.method private dumpInfo()V
    .locals 3

    .prologue
    .line 269
    const-string v0, "Settings/NetworkTypePreference"

    const-string v1, "------------Dump NetworkType Info begin-------------"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    const-string v0, "Settings/NetworkTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(): mAct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/NetworkTypePreference;->mAct:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const-string v0, "Settings/NetworkTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(): mSlotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/NetworkTypePreference;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    const-string v0, "Settings/NetworkTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init(): is4GSimCard(mSlotId) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/NetworkTypePreference;->mSlotId:I

    invoke-direct {p0, v2}, Lcom/mediatek/settings/NetworkTypePreference;->is4GSimCard(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v0, "Settings/NetworkTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passResult(): m2GSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v0, "Settings/NetworkTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passResult(): m3GSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v0, "Settings/NetworkTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passResult(): m4GSelected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GSelected:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v0, "Settings/NetworkTypePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "passResult(): act: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/mediatek/settings/NetworkTypePreference;->convertSelections2Act()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-string v0, "Settings/NetworkTypePreference"

    const-string v1, "------------Dump NetworkType Info end---------------"

    invoke-static {v0, v1}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 278
    return-void
.end method

.method private init()V
    .locals 6

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkTypePreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "network_type_preference"

    invoke-virtual {v3, v4}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceFragment;

    .line 170
    .local v0, "fragment":Landroid/preference/PreferenceFragment;
    const-string v3, "key_network_type_2g"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 171
    const-string v3, "key_network_type_3g"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 172
    const-string v3, "key_network_type_4g"

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    .line 174
    iget-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 175
    iget-object v4, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    check-cast v3, Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 177
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_1

    .line 178
    iget-object v4, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    check-cast v3, Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 180
    :cond_1
    iget-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_2

    .line 181
    iget-object v4, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    move-object v3, v0

    check-cast v3, Landroid/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v4, v3}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 184
    :cond_2
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkTypePreference;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 185
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "plmn_slot"

    const/4 v4, -0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->mSlotId:I

    .line 186
    const-string v3, "plmn_service"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->mAct:I

    .line 188
    const-string v3, "Settings/NetworkTypePreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init(): mSlotId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/NetworkTypePreference;->mSlotId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mAct = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/settings/NetworkTypePreference;->mAct:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    iget v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->mAct:I

    invoke-direct {p0, v3}, Lcom/mediatek/settings/NetworkTypePreference;->convertAct2Selections(I)V

    .line 191
    iget v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->mSlotId:I

    invoke-direct {p0, v3}, Lcom/mediatek/settings/NetworkTypePreference;->is4GSimCard(I)Z

    move-result v3

    if-nez v3, :cond_3

    .line 192
    const-string v3, "Settings/NetworkTypePreference"

    const-string v4, "init(): the baseband of the sim card do not contain 4G. remove 4G CheckBox item."

    invoke-static {v3, v4}, Lcom/mediatek/phone/PhoneLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v0}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 194
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    iget-object v3, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 196
    .end local v2    # "prefSet":Landroid/preference/PreferenceScreen;
    :cond_3
    return-void
.end method

.method private is4GSimCard(I)Z
    .locals 3
    .param p1, "slot"    # I

    .prologue
    .line 261
    const/4 v0, 0x0

    .line 262
    .local v0, "is4GSimCard":Z
    invoke-static {p1}, Lcom/mediatek/phone/gemini/GeminiUtils;->getBaseband(I)I

    move-result v1

    const/16 v2, 0x80

    if-lt v1, v2, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 265
    :cond_0
    return v0
.end method

.method private passResult()V
    .locals 3

    .prologue
    .line 220
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkTypePreference;->convertSelections2Act()I

    move-result v0

    .line 221
    .local v0, "act":I
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/settings/NetworkEditor;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    .local v1, "intent":Landroid/content/Intent;
    const-string v2, "plmn_service"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const/4 v2, -0x1

    invoke-virtual {p0, v2, v1}, Lcom/mediatek/settings/NetworkTypePreference;->setResult(ILandroid/content/Intent;)V

    .line 224
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkTypePreference;->dumpInfo()V

    .line 225
    return-void
.end method

.method private setCheckBoxEnable(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 211
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 213
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0, p1}, Landroid/preference/CheckBoxPreference;->setEnabled(Z)V

    .line 214
    return-void
.end method

.method private updateScreen()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GSelected:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 200
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GSelected:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 201
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GCheckBoxPreference:Landroid/preference/CheckBoxPreference;

    iget-boolean v1, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GSelected:Z

    invoke-virtual {v0, v1}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 202
    iget-boolean v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_0

    iget v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mDualSimMode:I

    if-eqz v0, :cond_0

    .line 203
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkTypePreference;->setCheckBoxEnable(Z)V

    .line 207
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkTypePreference;->invalidateOptionsMenu()V

    .line 208
    return-void

    .line 205
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/NetworkTypePreference;->setCheckBoxEnable(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    if-nez p1, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkTypePreference;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x1020002

    new-instance v2, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/NetworkTypePreference$NetworkTypeFragment;-><init>(Lcom/mediatek/settings/NetworkTypePreference;)V

    const-string v3, "network_type_preference"

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 76
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 137
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 138
    const v0, 0x7f0b0289

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 139
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 140
    return v2
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 132
    iget-object v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/NetworkTypePreference;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 133
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 164
    :goto_0
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkTypePreference;->finish()V

    .line 165
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 157
    :sswitch_1
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkTypePreference;->passResult()V

    goto :goto_0

    .line 155
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x102002c -> :sswitch_0
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v1, 0x0

    .line 145
    iget-boolean v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mAirplaneModeEnabled:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mDualSimMode:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m2GSelected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m3GSelected:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->m4GSelected:Z

    if-eqz v0, :cond_1

    .line 146
    :cond_0
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 150
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 148
    :cond_1
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v3, -0x1

    .line 119
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mAirplaneModeEnabled:Z

    .line 122
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0}, Lcom/mediatek/settings/NetworkTypePreference;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dual_sim_mode_setting"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/settings/NetworkTypePreference;->mDualSimMode:I

    .line 126
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/settings/NetworkTypePreference;->updateScreen()V

    .line 127
    return-void

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
