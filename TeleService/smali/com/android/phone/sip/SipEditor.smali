.class public Lcom/android/phone/sip/SipEditor;
.super Lmiui/preference/PreferenceActivity;
.source "SipEditor.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/sip/SipEditor$4;,
        Lcom/android/phone/sip/SipEditor$AdvancedSettings;,
        Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;,
        Lcom/android/phone/sip/SipEditor$PreferenceKey;
    }
.end annotation


# static fields
.field private static final GET_METHOD_PREFIX:Ljava/lang/String; = "get"

.field private static final KEY_PROFILE:Ljava/lang/String; = "profile"

.field private static final MENU_DISCARD:I = 0x2

.field private static final MENU_REMOVE:I = 0x3

.field private static final MENU_SAVE:I = 0x1

.field private static final NA:I = 0x0

.field private static final SCRAMBLED:C = '*'

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

.field private mCallManager:Lcom/android/internal/telephony/CallManager;

.field private mDisplayNameSet:Z

.field private mHomeButtonClicked:Z

.field private mOldProfile:Landroid/net/sip/SipProfile;

.field private mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

.field private mProfileDb:Lcom/android/phone/sip/SipProfileDb;

.field private mRemoveButton:Landroid/widget/Button;

.field private mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

.field private mSipManager:Landroid/net/sip/SipManager;

.field private mUpdateRequired:Z

.field private mUpdatedFieldIsEmpty:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 92
    const-class v0, Lcom/android/phone/sip/SipEditor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Lmiui/preference/PreferenceActivity;-><init>()V

    .line 666
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-static {p0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/phone/sip/SipEditor;Landroid/preference/Preference;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipEditor;
    .param p1, "x1"    # Landroid/preference/Preference;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/sip/SipEditor;)Landroid/net/sip/SipManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipEditor;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipEditor;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/sip/SipEditor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipEditor;

    .prologue
    .line 86
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->unregisterOldPrimaryAccount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipEditor;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipEditor;
    .param p1, "x1"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/sip/SipEditor;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/sip/SipEditor;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 86
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/sip/SipEditor;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    return-object v0
.end method

.method private checkIfDisplayNameSet()V
    .locals 4

    .prologue
    .line 605
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 606
    .local v0, "displayName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    .line 608
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayName set? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    if-eqz v1, :cond_1

    .line 610
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 614
    :goto_1
    return-void

    .line 606
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 612
    :cond_1
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private createSipProfile()Landroid/net/sip/SipProfile;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 495
    new-instance v0, Landroid/net/sip/SipProfile$Builder;

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v2}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/net/sip/SipProfile$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->getProfileName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProfileName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPassword(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setOutboundProxy(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setProtocol(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setDisplayName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setPort(I)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->isAlwaysSendKeepAlive()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setSendKeepAlive(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAutoRegistration(Z)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/sip/SipProfile$Builder;->setAuthUserName(Ljava/lang/String;)Landroid/net/sip/SipProfile$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/sip/SipProfile$Builder;->build()Landroid/net/sip/SipProfile;

    move-result-object v0

    return-object v0
.end method

.method private deleteAndUnregisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 1
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 322
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v0, p1}, Lcom/android/phone/sip/SipProfileDb;->deleteProfile(Landroid/net/sip/SipProfile;)V

    .line 321
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static getDefaultDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 539
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v2, v0, v1

    .line 540
    .local v2, "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v4, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mPreference:Landroid/preference/Preference;

    if-ne v4, p1, :cond_0

    return-object v2

    .line 539
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 542
    .end local v2    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    :cond_1
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "not possible to reach here"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private getProfileName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isAlwaysSendKeepAlive()Z
    .locals 3

    .prologue
    .line 587
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v0, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/ListPreference;

    .line 589
    .local v0, "pref":Landroid/preference/ListPreference;
    const v1, 0x7f0b0371

    invoke-virtual {p0, v1}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method private isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z
    .locals 3
    .param p1, "key"    # Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .prologue
    .line 373
    iget-object v0, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mPreference:Landroid/preference/Preference;

    check-cast v0, Landroid/preference/EditTextPreference;

    .line 374
    .local v0, "pref":Landroid/preference/EditTextPreference;
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mDefaultSummary:I

    invoke-virtual {p0, v2}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V
    .locals 11
    .param p1, "p"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 546
    if-eqz p1, :cond_4

    .line 547
    sget-object v8, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Edit the existing profile : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getProfileName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :try_start_0
    const-class v6, Landroid/net/sip/SipProfile;

    .line 550
    .local v6, "profileClass":Ljava/lang/Class;
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v3, v0, v2

    .line 551
    .local v3, "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "get"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mText:I

    invoke-virtual {p0, v9}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Class;

    invoke-virtual {v6, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 553
    .local v5, "meth":Ljava/lang/reflect/Method;
    sget-object v8, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v3, v8, :cond_1

    .line 554
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 556
    .local v7, "value":Z
    if-eqz v7, :cond_0

    const v8, 0x7f0b0371

    :goto_1
    invoke-virtual {p0, v8}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 550
    .end local v7    # "value":Z
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    .restart local v7    # "value":Z
    :cond_0
    const v8, 0x7f0b0370

    goto :goto_1

    .line 560
    .end local v7    # "value":Z
    :cond_1
    const/4 v8, 0x0

    check-cast v8, [Ljava/lang/Object;

    invoke-virtual {v5, p1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 561
    .local v7, "value":Ljava/lang/Object;
    if-nez v7, :cond_2

    const-string v8, ""

    :goto_3
    invoke-virtual {v3, v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 565
    .end local v0    # "arr$":[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v2    # "i$":I
    .end local v3    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v4    # "len$":I
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v6    # "profileClass":Ljava/lang/Class;
    .end local v7    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 566
    .local v1, "e":Ljava/lang/Exception;
    sget-object v8, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v9, "Can not load pref from profile"

    invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 584
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    return-void

    .line 561
    .restart local v0    # "arr$":[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v2    # "i$":I
    .restart local v3    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v4    # "len$":I
    .restart local v5    # "meth":Ljava/lang/reflect/Method;
    .restart local v6    # "profileClass":Ljava/lang/Class;
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_2
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_3

    .line 564
    .end local v3    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v5    # "meth":Ljava/lang/reflect/Method;
    .end local v7    # "value":Ljava/lang/Object;
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 569
    .end local v0    # "arr$":[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "profileClass":Ljava/lang/Class;
    :cond_4
    sget-object v8, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v9, "Edit a new profile"

    invoke-static {v8, v9}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .restart local v0    # "arr$":[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .restart local v2    # "i$":I
    :goto_5
    if-ge v2, v4, :cond_6

    aget-object v3, v0, v2

    .line 571
    .restart local v3    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v8, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mPreference:Landroid/preference/Preference;

    invoke-virtual {v8, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 578
    iget v8, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mInitValue:I

    if-eqz v8, :cond_5

    .line 579
    iget v8, v3, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mInitValue:I

    invoke-virtual {p0, v8}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->setValue(Ljava/lang/String;)V

    .line 570
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 582
    .end local v3    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    :cond_6
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/phone/sip/SipEditor;->mDisplayNameSet:Z

    goto :goto_4
.end method

.method private replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    .locals 3
    .param p1, "oldProfile"    # Landroid/net/sip/SipProfile;
    .param p2, "newProfile"    # Landroid/net/sip/SipProfile;

    .prologue
    .line 469
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipEditor$3;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/phone/sip/SipEditor$3;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    const-string v2, "SipEditor"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 487
    return-void
.end method

.method private saveAndRegisterProfile(Landroid/net/sip/SipProfile;)V
    .locals 4
    .param p1, "p"    # Landroid/net/sip/SipProfile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 295
    if-nez p1, :cond_1

    .line 308
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    invoke-virtual {v1, p1}, Lcom/android/phone/sip/SipProfileDb;->saveProfile(Landroid/net/sip/SipProfile;)V

    .line 299
    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getAutoRegistration()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    :cond_2
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    invoke-static {}, Lcom/android/phone/SipUtil;->createIncomingCallPendingIntent()Landroid/app/PendingIntent;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroid/net/sip/SipManager;->open(Landroid/net/sip/SipProfile;Landroid/app/PendingIntent;Landroid/net/sip/SipRegistrationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 304
    :catch_0
    move-exception v0

    .line 305
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "register failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static scramble(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 621
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    new-array v0, v1, [C

    .line 622
    .local v0, "cc":[C
    const/16 v1, 0x2a

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 623
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method private setRemovedProfileAndFinish()V
    .locals 3

    .prologue
    .line 338
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/sip/SipSettings;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 340
    const v1, 0x7f0b0340

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 342
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V

    .line 344
    return-void
.end method

.method private setupPreference(Landroid/preference/Preference;)V
    .locals 6
    .param p1, "pref"    # Landroid/preference/Preference;

    .prologue
    .line 594
    invoke-virtual {p1, p0}, Landroid/preference/Preference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 595
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v0

    .local v0, "arr$":[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v2, v0, v1

    .line 596
    .local v2, "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget v5, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mText:I

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 597
    .local v4, "name":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 598
    iput-object p1, v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mPreference:Landroid/preference/Preference;

    .line 602
    .end local v2    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v4    # "name":Ljava/lang/String;
    :cond_0
    return-void

    .line 595
    .restart local v2    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v4    # "name":Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/String;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 355
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    if-eqz v0, :cond_0

    .line 356
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Home button clicked, don\'t show dialog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :goto_0
    return-void

    .line 359
    :cond_0
    new-instance v0, Lcom/android/phone/sip/SipEditor$2;

    invoke-direct {v0, p0, p1}, Lcom/android/phone/sip/SipEditor$2;-><init>(Lcom/android/phone/sip/SipEditor;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/sip/SipEditor;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 347
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 351
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 352
    return-void
.end method

.method private unregisterOldPrimaryAccount()V
    .locals 4

    .prologue
    .line 454
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "primaryAccountUri":Ljava/lang/String;
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    invoke-virtual {v1}, Lcom/android/phone/sip/SipSharedPreferences;->isReceivingCallsEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 458
    sget-object v1, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unregister old primary: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    invoke-direct {p0, v0}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 461
    :cond_0
    return-void
.end method

.method private unregisterProfile(Ljava/lang/String;)V
    .locals 2
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 325
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/phone/sip/SipEditor$1;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/sip/SipEditor$1;-><init>(Lcom/android/phone/sip/SipEditor;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 335
    return-void
.end method

.method private validateAndSetResult()V
    .locals 17

    .prologue
    .line 379
    const/4 v1, 0x1

    .line 380
    .local v1, "allEmpty":Z
    const/4 v5, 0x0

    .line 381
    .local v5, "firstEmptyFieldTitle":Ljava/lang/CharSequence;
    invoke-static {}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v2

    .local v2, "arr$":[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    array-length v9, v2

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_0
    if-ge v6, v9, :cond_6

    aget-object v8, v2, v6

    .line 382
    .local v8, "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    iget-object v10, v8, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mPreference:Landroid/preference/Preference;

    .line 383
    .local v10, "p":Landroid/preference/Preference;
    instance-of v14, v10, Landroid/preference/EditTextPreference;

    if-eqz v14, :cond_1

    move-object v12, v10

    .line 384
    check-cast v12, Landroid/preference/EditTextPreference;

    .line 385
    .local v12, "pref":Landroid/preference/EditTextPreference;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/phone/sip/SipEditor;->isEditTextEmpty(Lcom/android/phone/sip/SipEditor$PreferenceKey;)Z

    move-result v4

    .line 386
    .local v4, "fieldEmpty":Z
    if-eqz v1, :cond_0

    if-nez v4, :cond_0

    const/4 v1, 0x0

    .line 389
    :cond_0
    if-eqz v4, :cond_2

    .line 390
    sget-object v14, Lcom/android/phone/sip/SipEditor$4;->$SwitchMap$com$android$phone$sip$SipEditor$PreferenceKey:[I

    invoke-virtual {v8}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 401
    if-nez v5, :cond_1

    .line 402
    invoke-virtual {v12}, Landroid/preference/EditTextPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 381
    .end local v4    # "fieldEmpty":Z
    .end local v12    # "pref":Landroid/preference/EditTextPreference;
    :cond_1
    :goto_1
    :pswitch_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 392
    .restart local v4    # "fieldEmpty":Z
    .restart local v12    # "pref":Landroid/preference/EditTextPreference;
    :pswitch_1
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 398
    :pswitch_2
    const v14, 0x7f0b0365

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_1

    .line 406
    :cond_2
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v8, v14, :cond_4

    .line 407
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v14}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 408
    .local v11, "port":I
    const/16 v14, 0x3e8

    if-lt v11, v14, :cond_3

    const v14, 0xfffe

    if-le v11, v14, :cond_1

    .line 409
    :cond_3
    const v14, 0x7f0b036a

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    .line 451
    .end local v4    # "fieldEmpty":Z
    .end local v8    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v10    # "p":Landroid/preference/Preference;
    .end local v11    # "port":I
    .end local v12    # "pref":Landroid/preference/EditTextPreference;
    :goto_2
    return-void

    .line 412
    .restart local v4    # "fieldEmpty":Z
    .restart local v8    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .restart local v10    # "p":Landroid/preference/Preference;
    .restart local v12    # "pref":Landroid/preference/EditTextPreference;
    :cond_4
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v8, v14, :cond_5

    .line 413
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v14}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 414
    const v14, 0x7f0b0381

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 417
    :cond_5
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne v8, v14, :cond_1

    .line 418
    sget-object v14, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v14}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v14

    const-string v15, "/"

    invoke-virtual {v14, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_1

    .line 419
    const v14, 0x7f0b0381

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 426
    .end local v4    # "fieldEmpty":Z
    .end local v8    # "key":Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .end local v10    # "p":Landroid/preference/Preference;
    .end local v12    # "pref":Landroid/preference/EditTextPreference;
    :cond_6
    if-nez v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v14, :cond_8

    .line 427
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_2

    .line 429
    :cond_8
    if-eqz v5, :cond_9

    .line 430
    const v14, 0x7f0b0369

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v5, v15, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Lcom/android/phone/sip/SipEditor;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto :goto_2

    .line 434
    :cond_9
    :try_start_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v14, :cond_a

    .line 435
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    invoke-virtual {v14}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->unregisterProfile(Ljava/lang/String;)V

    .line 438
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/sip/SipEditor;->createSipProfile()Landroid/net/sip/SipProfile;

    move-result-object v13

    .line 439
    .local v13, "profile":Landroid/net/sip/SipProfile;
    new-instance v7, Landroid/content/Intent;

    const-class v14, Lcom/android/phone/sip/SipSettings;

    move-object/from16 v0, p0

    invoke-direct {v7, v0, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 440
    .local v7, "intent":Landroid/content/Intent;
    const-string v14, "sip_profile"

    invoke-virtual {v7, v14, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 441
    const/4 v14, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v7}, Lcom/android/phone/sip/SipEditor;->setResult(ILandroid/content/Intent;)V

    .line 442
    const v14, 0x7f0b033f

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-static {v0, v14, v15}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v14

    invoke-virtual {v14}, Landroid/widget/Toast;->show()V

    .line 445
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v13}, Lcom/android/phone/sip/SipEditor;->replaceProfile(Landroid/net/sip/SipProfile;Landroid/net/sip/SipProfile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 447
    .end local v7    # "intent":Landroid/content/Intent;
    .end local v13    # "profile":Landroid/net/sip/SipProfile;
    :catch_0
    move-exception v3

    .line 448
    .local v3, "e":Ljava/lang/Exception;
    sget-object v14, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v15, "Can not create new SipProfile"

    invoke-static {v14, v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 449
    const v14, 0x7f0b0381

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/phone/sip/SipEditor;->showAlert(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 390
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 190
    sget-object v5, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    const-string v6, "start profile editor"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 193
    invoke-static {p0}, Landroid/net/sip/SipManager;->newInstance(Landroid/content/Context;)Landroid/net/sip/SipManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mSipManager:Landroid/net/sip/SipManager;

    .line 194
    new-instance v5, Lcom/android/phone/sip/SipSharedPreferences;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipSharedPreferences;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;

    .line 195
    new-instance v5, Lcom/android/phone/sip/SipProfileDb;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipProfileDb;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mProfileDb:Lcom/android/phone/sip/SipProfileDb;

    .line 196
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    .line 198
    const v5, 0x7f04003a

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->setContentView(I)V

    .line 199
    const v5, 0x7f050037

    invoke-virtual {p0, v5}, Lcom/android/phone/sip/SipEditor;->addPreferencesFromResource(I)V

    .line 201
    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string v6, "sip_profile"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    :goto_0
    check-cast v5, Landroid/net/sip/SipProfile;

    move-object v3, v5

    check-cast v3, Landroid/net/sip/SipProfile;

    .line 204
    .local v3, "p":Landroid/net/sip/SipProfile;
    iput-object v3, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    .line 206
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v4

    .line 207
    .local v4, "screen":Landroid/preference/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 208
    invoke-virtual {v4, v1}, Landroid/preference/PreferenceGroup;->getPreference(I)Landroid/preference/Preference;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/sip/SipEditor;->setupPreference(Landroid/preference/Preference;)V

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 201
    .end local v1    # "i":I
    .end local v2    # "n":I
    .end local v3    # "p":Landroid/net/sip/SipProfile;
    .end local v4    # "screen":Landroid/preference/PreferenceGroup;
    :cond_0
    const-string v5, "profile"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v5

    goto :goto_0

    .line 211
    .restart local v1    # "i":I
    .restart local v2    # "n":I
    .restart local v3    # "p":Landroid/net/sip/SipProfile;
    .restart local v4    # "screen":Landroid/preference/PreferenceGroup;
    :cond_1
    if-nez v3, :cond_2

    .line 212
    const v5, 0x7f0b0354

    invoke-virtual {v4, v5}, Landroid/preference/PreferenceGroup;->setTitle(I)V

    .line 214
    :cond_2
    new-instance v5, Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-direct {v5, p0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;-><init>(Lcom/android/phone/sip/SipEditor;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    .line 215
    new-instance v5, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    invoke-direct {v5, p0, v3}, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;-><init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V

    iput-object v5, p0, Lcom/android/phone/sip/SipEditor;->mPrimaryAccountSelector:Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;

    .line 217
    invoke-direct {p0, v3}, Lcom/android/phone/sip/SipEditor;->loadPreferencesFromProfile(Landroid/net/sip/SipProfile;)V

    .line 218
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 219
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 221
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 223
    :cond_3
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 238
    const/4 v0, 0x2

    const v1, 0x7f0b0342

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$attr;->actionBarDiscardIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 242
    const v0, 0x7f0b0341

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$attr;->actionBarSaveIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 246
    const/4 v0, 0x3

    const v1, 0x7f0b033d

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$attr;->actionBarDeleteIcon:I

    invoke-static {p0, v1}, Lmiui/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 250
    return v3
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 284
    packed-switch p1, :pswitch_data_0

    .line 291
    invoke-super {p0, p1, p2}, Lmiui/preference/PreferenceActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 286
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 287
    const/4 v0, 0x1

    goto :goto_0

    .line 284
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 263
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 279
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 265
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    goto :goto_0

    .line 268
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_0

    .line 271
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->setRemovedProfileAndFinish()V

    goto :goto_0

    .line 274
    :sswitch_3
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->finish()V

    goto :goto_0

    .line 263
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x102002c -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 227
    sget-object v0, Lcom/android/phone/sip/SipEditor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SipEditor onPause(): finishing? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 230
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->validateAndSetResult()V

    .line 232
    :cond_0
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onPause()V

    .line 233
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "pref"    # Landroid/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    .line 512
    iget-boolean v1, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    if-nez v1, :cond_0

    .line 513
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    .line 515
    :cond_0
    instance-of v1, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 516
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->invalidateOptionsMenu()V

    .line 535
    .end local p1    # "pref":Landroid/preference/Preference;
    :goto_0
    return v2

    .line 519
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_1
    if-nez p2, :cond_3

    const-string v0, ""

    .line 520
    .local v0, "value":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 521
    invoke-direct {p0, p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceKey(Landroid/preference/Preference;)Lcom/android/phone/sip/SipEditor$PreferenceKey;

    move-result-object v1

    iget v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mDefaultSummary:I

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(I)V

    .line 528
    :goto_2
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_2

    .line 529
    check-cast p1, Landroid/preference/EditTextPreference;

    .end local p1    # "pref":Landroid/preference/Preference;
    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 530
    invoke-direct {p0}, Lcom/android/phone/sip/SipEditor;->checkIfDisplayNameSet()V

    .line 534
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->invalidateOptionsMenu()V

    goto :goto_0

    .line 519
    .end local v0    # "value":Ljava/lang/String;
    .restart local p1    # "pref":Landroid/preference/Preference;
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 522
    .restart local v0    # "value":Ljava/lang/String;
    :cond_4
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    iget-object v1, v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->mPreference:Landroid/preference/Preference;

    if-ne p1, v1, :cond_5

    .line 523
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 525
    :cond_5
    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    const/4 v2, 0x1

    .line 255
    const/4 v1, 0x3

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 256
    .local v0, "removeMenu":Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor;->mOldProfile:Landroid/net/sip/SipProfile;

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 257
    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mUpdateRequired:Z

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 258
    invoke-super {p0, p1}, Lmiui/preference/PreferenceActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1

    .line 256
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 176
    invoke-super {p0}, Lmiui/preference/PreferenceActivity;->onResume()V

    .line 177
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor;->mHomeButtonClicked:Z

    .line 178
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mCallManager:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v0, v1, :cond_1

    .line 179
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mAdvancedSettings:Lcom/android/phone/sip/SipEditor$AdvancedSettings;

    invoke-virtual {v0}, Lcom/android/phone/sip/SipEditor$AdvancedSettings;->show()V

    .line 180
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 186
    :cond_0
    :goto_0
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor;->mRemoveButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method
