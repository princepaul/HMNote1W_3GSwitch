.class public Lcom/android/phone/settings/CallBarring;
.super Lcom/android/phone/TimeConsumingPreferenceActivity;
.source "CallBarring.java"

# interfaces
.implements Lcom/android/phone/settings/CallBarringInterface;


# static fields
.field private static final BUTTON_ALL_INCOMING_EXCEPT:Ljava/lang/String; = "all_incoming_except_key"

.field private static final BUTTON_ALL_INCOMING_KEY:Ljava/lang/String; = "all_incoming_key"

.field private static final BUTTON_ALL_OUTING_KEY:Ljava/lang/String; = "all_outing_international_key"

.field private static final BUTTON_CALL_BARRING_KEY:Ljava/lang/String; = "all_outing_key"

.field private static final BUTTON_CHANGE_PASSWORD_KEY:Ljava/lang/String; = "change_password_key"

.field private static final BUTTON_DEACTIVATE_KEY:Ljava/lang/String; = "deactivate_all_key"

.field private static final BUTTON_OUT_INTERNATIONAL_EXCEPT:Ljava/lang/String; = "all_outing_except_key"

.field private static final DBG:Z = false

.field public static final FDN_FAIL:I = 0x320

.field private static final LOG_TAG:Ljava/lang/String;

.field public static final PASSWORD_ERROR:I = 0x2bc


# instance fields
.field private mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

.field private mCallChangePassword:Landroid/preference/PreferenceScreen;

.field private mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

.field private mErrorState:I

.field private mInitIndex:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mPreferences:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSlotId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lcom/android/phone/settings/CallBarring;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/settings/CallBarring;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    .line 60
    iput v1, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .line 61
    iput v1, p0, Lcom/android/phone/settings/CallBarring;->mErrorState:I

    .line 64
    iput v1, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    .line 70
    new-instance v0, Lcom/android/phone/settings/CallBarring$1;

    invoke-direct {v0, p0}, Lcom/android/phone/settings/CallBarring$1;-><init>(Lcom/android/phone/settings/CallBarring;)V

    iput-object v0, p0, Lcom/android/phone/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/settings/CallBarring;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/settings/CallBarring;

    .prologue
    .line 37
    iget v0, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Lcom/android/phone/settings/CallBarring;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method private doGetCallState(Landroid/preference/Preference;)V
    .locals 1
    .param p1, "p"    # Landroid/preference/Preference;

    .prologue
    .line 257
    instance-of v0, p1, Lcom/android/phone/settings/CallBarringBasePreference;

    if-eqz v0, :cond_0

    .line 258
    check-cast p1, Lcom/android/phone/settings/CallBarringBasePreference;

    .end local p1    # "p":Landroid/preference/Preference;
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->init(Lcom/android/phone/TimeConsumingPreferenceListener;Z)V

    .line 260
    :cond_0
    return-void
.end method

.method private initial()V
    .locals 3

    .prologue
    .line 230
    iget v1, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    invoke-static {v1}, Lcom/android/phone/PhoneGlobals;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 232
    .local v0, "phone":Lcom/android/internal/telephony/Phone;
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "AO"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 233
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f0b047e

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 234
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 236
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "OI"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 237
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f0b047f

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 238
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 240
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "OX"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 241
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f0b0480

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 242
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 244
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "AI"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f0b0481

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 246
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 248
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    const-string v2, "IR"

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmFacility(Ljava/lang/String;)V

    .line 249
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    const v2, 0x7f0b0482

    invoke-virtual {v1, v2}, Lcom/android/phone/settings/CallBarringBasePreference;->setmTitle(I)V

    .line 250
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 252
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-virtual {v1, p0}, Lcom/android/phone/settings/CallBarringResetPreference;->setListener(Lcom/android/phone/TimeConsumingPreferenceListener;)V

    .line 253
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringResetPreference;->setPhoneInstance(Lcom/android/internal/telephony/Phone;)V

    .line 254
    return-void
.end method

.method private startUpdate()V
    .locals 3

    .prologue
    .line 215
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .line 216
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/preference/Preference;

    .line 217
    .local v0, "p":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 218
    invoke-direct {p0, v0}, Lcom/android/phone/settings/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 220
    :cond_0
    return-void
.end method


# virtual methods
.method public doCallBarringRefresh(Ljava/lang/String;)V
    .locals 4
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 308
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0486

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 309
    .local v0, "summary":Ljava/lang/String;
    const-string v1, "AO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 310
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 312
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 316
    :cond_0
    const-string v1, "OI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 317
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 319
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 320
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 323
    :cond_1
    const-string v1, "OX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 324
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 325
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 326
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 330
    :cond_2
    const-string v1, "AI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 331
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 332
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 335
    :cond_3
    const-string v1, "IR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 336
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 337
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 339
    :cond_4
    return-void
.end method

.method public doCancelAllState()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 293
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1}, Lcom/android/phone/settings/CallBarringBasePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b0486

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 294
    .local v0, "summary":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 295
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 296
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 298
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 299
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 300
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 301
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 302
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v0}, Lcom/android/phone/settings/CallBarringBasePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 303
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v1, v3}, Lcom/android/phone/settings/CallBarringBasePreference;->setChecked(Z)V

    .line 304
    return-void
.end method

.method public getErrorState()I
    .locals 1

    .prologue
    .line 342
    iget v0, p0, Lcom/android/phone/settings/CallBarring;->mErrorState:I

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 223
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 224
    const/16 v0, 0x12c

    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->getErrorState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->finish()V

    .line 227
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-static {p0}, Lcom/android/phone/settings/SimPickerPreference;->showSimPicker(Landroid/app/Activity;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/telephony/SubscriptionManager;->getDefaultSlotId()I

    move-result v4

    invoke-static {v3, v4}, Lmiui/telephony/SubscriptionManager;->getSlotIdExtra(Landroid/content/Intent;I)I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    .line 105
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    .line 107
    .local v1, "app":Lcom/android/phone/PhoneGlobals;
    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/phone/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    .line 108
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v3, v4}, Lcom/android/phone/settings/CallBarring;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 110
    const v3, 0x7f050004

    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallBarring;->addPreferencesFromResource(I)V

    .line 112
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 113
    .local v2, "prefSet":Landroid/preference/PreferenceScreen;
    const-string v3, "all_outing_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 115
    const-string v3, "all_outing_international_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 117
    const-string v3, "all_outing_except_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 119
    const-string v3, "all_incoming_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 121
    const-string v3, "all_incoming_except_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CallBarringBasePreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    .line 124
    const-string v3, "deactivate_all_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/phone/settings/CallBarringResetPreference;

    iput-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

    .line 126
    const-string v3, "change_password_key"

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    iput-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallChangePassword:Landroid/preference/PreferenceScreen;

    .line 128
    invoke-direct {p0}, Lcom/android/phone/settings/CallBarring;->initial()V

    .line 129
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallAllOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 136
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 137
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallInternationalOutButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 138
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 139
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallInButton2:Lcom/android/phone/settings/CallBarringBasePreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/settings/CallBarringBasePreference;->setRefreshInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 140
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mCallCancel:Lcom/android/phone/settings/CallBarringResetPreference;

    invoke-virtual {v3, p0}, Lcom/android/phone/settings/CallBarringResetPreference;->setCallBarringInterface(Lcom/android/phone/settings/CallBarringInterface;)V

    .line 142
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->getActionBar()Lmiui/app/ActionBar;

    move-result-object v0

    .line 143
    .local v0, "actionBar":Lmiui/app/ActionBar;
    if-eqz v0, :cond_0

    .line 144
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lmiui/app/ActionBar;->setHomeButtonEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    const v5, 0x7f0b01c2

    .line 150
    const/16 v4, 0x2bc

    if-eq p1, v4, :cond_0

    const/16 v4, 0x320

    if-ne p1, v4, :cond_1

    .line 151
    :cond_0
    new-instance v0, Lmiui/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiui/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 154
    .local v0, "b":Lmiui/app/AlertDialog$Builder;
    const v3, 0x7f0b01ba

    .line 156
    .local v3, "titleId":I
    sparse-switch p1, :sswitch_data_0

    .line 166
    const v2, 0x7f0b01bf

    .line 167
    .local v2, "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mDismissAndFinish:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v4}, Lmiui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    .line 171
    :goto_0
    invoke-virtual {p0, v3}, Lcom/android/phone/settings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 172
    invoke-virtual {p0, v2}, Lcom/android/phone/settings/CallBarring;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiui/app/AlertDialog$Builder;

    .line 173
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lmiui/app/AlertDialog$Builder;->setCancelable(Z)Lmiui/app/AlertDialog$Builder;

    .line 174
    invoke-virtual {v0}, Lmiui/app/AlertDialog$Builder;->create()Lmiui/app/AlertDialog;

    move-result-object v1

    .line 177
    .local v1, "dialog":Lmiui/app/AlertDialog;
    invoke-virtual {v1}, Lmiui/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 181
    .end local v0    # "b":Lmiui/app/AlertDialog$Builder;
    .end local v1    # "dialog":Lmiui/app/AlertDialog;
    .end local v2    # "msgId":I
    .end local v3    # "titleId":I
    :goto_1
    return-object v1

    .line 158
    .restart local v0    # "b":Lmiui/app/AlertDialog$Builder;
    .restart local v3    # "titleId":I
    :sswitch_0
    const v2, 0x1040058

    .line 159
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v4}, Lmiui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_0

    .line 162
    .end local v2    # "msgId":I
    :sswitch_1
    const v2, 0x7f0b04ad

    .line 163
    .restart local v2    # "msgId":I
    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mDismiss:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v5, v4}, Lmiui/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiui/app/AlertDialog$Builder;

    goto :goto_0

    .line 181
    .end local v0    # "b":Lmiui/app/AlertDialog$Builder;
    .end local v2    # "msgId":I
    .end local v3    # "titleId":I
    :cond_1
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v1

    goto :goto_1

    .line 156
    :sswitch_data_0
    .sparse-switch
        0x2bc -> :sswitch_0
        0x320 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 355
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onDestroy()V

    .line 357
    iget-object v0, p0, Lcom/android/phone/settings/CallBarring;->mIntentFilter:Landroid/content/IntentFilter;

    if-eqz v0, :cond_0

    .line 358
    iget-object v0, p0, Lcom/android/phone/settings/CallBarring;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/settings/CallBarring;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    :cond_0
    return-void
.end method

.method public onError(Landroid/preference/Preference;I)V
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "error"    # I

    .prologue
    .line 287
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onError(Landroid/preference/Preference;I)V

    .line 288
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 289
    return-void
.end method

.method public onFinished(Landroid/preference/Preference;Z)V
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;
    .param p2, "reading"    # Z

    .prologue
    .line 264
    iget v3, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    iget-object v4, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->isFinishing()Z

    move-result v3

    if-nez v3, :cond_0

    .line 265
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/phone/settings/CallBarringBasePreference;

    .line 267
    .local v0, "cb":Lcom/android/phone/settings/CallBarringBasePreference;
    invoke-virtual {v0}, Lcom/android/phone/settings/CallBarringBasePreference;->isSuccess()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 268
    iget v3, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .line 273
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    iget v4, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/preference/Preference;

    .line 274
    .local v2, "p":Landroid/preference/Preference;
    invoke-direct {p0, v2}, Lcom/android/phone/settings/CallBarring;->doGetCallState(Landroid/preference/Preference;)V

    .line 282
    .end local v0    # "cb":Lcom/android/phone/settings/CallBarringBasePreference;
    .end local v2    # "p":Landroid/preference/Preference;
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onFinished(Landroid/preference/Preference;Z)V

    .line 283
    return-void

    .line 276
    .restart local v0    # "cb":Lcom/android/phone/settings/CallBarringBasePreference;
    :cond_1
    iget v1, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 277
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/preference/Preference;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 276
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 279
    :cond_2
    iget-object v3, p0, Lcom/android/phone/settings/CallBarring;->mPreferences:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 192
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 193
    .local v0, "itemId":I
    packed-switch v0, :pswitch_data_0

    .line 200
    invoke-super {p0, p1}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 195
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/phone/settings/CallBarring;->finish()V

    .line 196
    const/4 v1, 0x1

    goto :goto_0

    .line 193
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;
    .param p2, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 205
    iget-object v1, p0, Lcom/android/phone/settings/CallBarring;->mCallChangePassword:Landroid/preference/PreferenceScreen;

    if-ne p2, v1, :cond_0

    .line 206
    new-instance v0, Lcom/android/phone/settings/CallBarringChangePasswordDialog;

    iget v1, p0, Lcom/android/phone/settings/CallBarring;->mSlotId:I

    invoke-direct {v0, p0, v1}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;-><init>(Landroid/content/Context;I)V

    .line 208
    .local v0, "dialog":Lcom/android/phone/settings/CallBarringChangePasswordDialog;
    invoke-virtual {v0}, Lcom/android/phone/settings/CallBarringChangePasswordDialog;->show()V

    .line 209
    const/4 v1, 0x1

    .line 211
    .end local v0    # "dialog":Lcom/android/phone/settings/CallBarringChangePasswordDialog;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 186
    invoke-super {p0}, Lcom/android/phone/TimeConsumingPreferenceActivity;->onResume()V

    .line 187
    invoke-direct {p0}, Lcom/android/phone/settings/CallBarring;->startUpdate()V

    .line 188
    return-void
.end method

.method public resetIndex(I)V
    .locals 0
    .param p1, "i"    # I

    .prologue
    .line 350
    iput p1, p0, Lcom/android/phone/settings/CallBarring;->mInitIndex:I

    .line 351
    return-void
.end method

.method public setErrorState(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 346
    iput p1, p0, Lcom/android/phone/settings/CallBarring;->mErrorState:I

    .line 347
    return-void
.end method
