<?php

namespace App\Models;

use App\Observers\UnitObserver;
use Spatie\Image\Manipulations;
use Spatie\MediaLibrary\HasMedia;
use Illuminate\Support\Facades\App;
use Laravel\Nova\Actions\Actionable;
use Illuminate\Database\Eloquent\Model;
use Spatie\MediaLibrary\InteractsWithMedia;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Spatie\MediaLibrary\MediaCollections\Models\Media;
use Illuminate\Database\Eloquent\Attributes\ObservedBy;

#[ObservedBy([UnitObserver::class])]
class Unit extends Model implements HasMedia
{
    use HasFactory, SoftDeletes, InteractsWithMedia, Actionable;

    /**
     * The paymentPlans that belong to the Unit
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function paymentPlans()
    {
        return $this->belongsToMany(PaymentPlan::class, 'payment_plan_unit', 'unit_id', 'payment_plan_id');
    }

    /**
     * Get the unitType that owns the Unit
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function unitType()
    {
        return $this->belongsTo(UnitType::class, 'unit_type_id');
    }

    /**
     * Get the shape associated with the Unit
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function shape()
    {
        return $this->hasOne(Shape::class);
    }

    /**
     * Get the lockoff associated with the Unit
     *
     * @return \Illuminate\Database\Eloquent\Relations\HasOne
     */
    public function lockoff()
    {
        return $this->belongsTo(Unit::class, 'lockoff_id');
    }

    /**
     * Get the tower that owns the Unit
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    /*  public function tower()
    {
        return $this->belongsTo(Tower::class);
    } */

    /**
     * Get the section that owns the Unit
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsTo
     */
    public function section()
    {
        return $this->belongsTo(Section::class);
    }


    /**
     * The savedUnits that belong to the User
     *
     * @return \Illuminate\Database\Eloquent\Relations\BelongsToMany
     */
    public function users()
    {
        return $this->belongsToMany(User::class, 'unit_user');
    }

    public function registerMediaConversions(Media $media = null): void
    {
        $this->addMediaConversion('thumb')->width(450)->keepOriginalImageFormat()->nonOptimized()->nonQueued();
        
        $this->addMediaConversion('medium')->width(1280)->keepOriginalImageFormat()->nonOptimized()->nonQueued();
        
        $this->addMediaConversion('large')->width(1920)->keepOriginalImageFormat()->nonOptimized()->nonQueued();
    }

    public function registerMediaCollections(): void
    {
        $this->addMediaCollection('unitgallery');
    }


    protected function getInteriorConstAttribute($value)
    {
        if (App::isLocale('en')) {
            return (round($value * 10.764, 2));
        }else{
            return $value;
        }
    }

    protected function getExteriorConstAttribute($value)
    {
        if (App::isLocale('en')) {
            return (round($value * 10.764, 2));
        }else{
            return $value;
        }
    }

    protected function getExtraExteriorConstAttribute($value)
    {
        if (App::isLocale('en')) {
            return (round($value * 10.764, 2));
        }else{
            return $value;
        }
    }

    protected function getPatioAttribute($value)
    {
        if (App::isLocale('en')) {
            return (round($value * 10.764, 2));
        }else{
            return $value;
        }
    }

    protected function getRooftopAttribute($value)
    {
        if (App::isLocale('en')) {
            return (round($value * 10.764, 2));
        }else{
            return $value;
        }
    }

    protected function getGardenAttribute($value)
    {
        if (App::isLocale('en')) {
            return (round($value * 10.764, 2));
        }else{
            return $value;
        }
    }

    protected function getStorageAttribute($value)
    {
        if (App::isLocale('en')) {
            return (round($value * 10.764, 2));
        }else{
            return $value;
        }
    }

    protected function getConstTotalAttribute($value)
    {
        if (App::isLocale('en')) {
            return (round($value * 10.764, 2));
        }else{
            return $value;
        }
    }

}