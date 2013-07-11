/*
    OpenSR - opensource multi-genre game based upon "Space Rangers 2: Dominators"
    Copyright (C) 2013 Kosyak <ObKo@mail.ru>

    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/

#ifndef WORLD_RACE_MANAGER_H
#define WORLD_RACE_MANAGER_H

#include <OpenSR/Types.h>
#include <map>

namespace Rangers
{
namespace World
{
struct Race
{
    uint32_t id;
    std::string name;
    TextureRegionDescriptor icon;
    bool invader;
    std::map<uint32_t, float> relations;
};

class RaceManager
{
public:
    RaceManager();

    void loadRaces(const std::wstring& file);

    boost::shared_ptr<Race> race(uint32_t id) const;
    boost::shared_ptr<Race> race(const std::string& id) const;

private:
    std::map<uint32_t, boost::shared_ptr<Race> > m_races;
};
}
}

#endif